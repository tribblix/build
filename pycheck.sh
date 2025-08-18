#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# }}}
#
# Copyright 2025 Peter Tribble
#

#
# this uses the PyPi json api to check whether python modules need
# updating
#
# it uses the current filename (as determined by the file we unpack
# as part of the build) to get both the module name and the version
#
# we can't use the package name as that can be modified to make it
# look more sane (and short enough for the SVR4 name limit)
#

THOME=${THOME:-/packages/localsrc/Tribblix}
cd "${THOME}/build" || exit 1

PY3VER=312
CHECKER=${THOME}/build/pkgpycheck.sh

if [ ! -x /usr/bin/curl ]; then
    echo "ERROR: unable to find curl"
    exit 1
fi
if [ ! -x /usr/bin/jq ]; then
    echo "ERROR: unable to find jq"
    exit 1
fi

if [ $# -gt 0 ]; then
    for file in "$@"
    do
	for pkgstr in $(grep -E 'build/(unpack|pkg_pep518|pkg_setup_py)' "${file}/build.sh" | grep -v https:// | awk '{print $NF}')
	do
	    pkgver=${pkgstr##*-}
	    pkgname=${pkgstr%-*}
	    "${CHECKER}" "${file}" "${pkgname}" "${pkgver}"
	done
    done
    exit 0
fi

#
# these packages don't have the python version in their package name
# so will be missed by the wildcard below
#
# we skip commix, which isn't updated on PyPi
#
grep -E -H 'build/(unpack|pkg_pep518|pkg_setup_py)' TRIB{mog,pgactivity,pgbarman,s3cmd,scons}/build.sh | grep -v https:// | while read -r ffile fpkgstr
do
    file=${ffile%%/*}
    pkgstr=${fpkgstr##* }
    pkgver=${pkgstr##*-}
    pkgname=${pkgstr%-*}
    "${CHECKER}" "${file}" "${pkgname}" "${pkgver}"
done

#
# first look at packages built from wheels
#
grep -E -H 'build/pkg_wheel' *-${PY3VER}/build.sh | grep -v https:// | while read -r ffile fpkgname fwheel
do
    file=${ffile%%/*}
    #
    # a wheel name is like foo-1.23.4-py2.py3-none-any.whl
    # so strip off everything from -py onwards
    # and then the version is the previous part
    # and the package name is everything in front of that
    #
    fwheel=${fwheel%%-py*}
    pkgver=${fwheel##*-}
    pkgname=${fwheel%-*}
    "${CHECKER}" -w "${file}" "${pkgname}" "${pkgver}"
done

grep -E -H 'build/(unpack|pkg_pep518|pkg_setup_py)' *-${PY3VER}/build.sh | grep -v https:// | while read -r ffile fpkgstr
do
    file=${ffile%%/*}
    pkgstr=${fpkgstr##* }
    pkgver=${pkgstr##*-}
    pkgname=${pkgstr%-*}
    "${CHECKER}" "${file}" "${pkgname}" "${pkgver}"
done
