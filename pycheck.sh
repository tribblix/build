#!/bin/sh
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
# Copyright 2023 Peter Tribble
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
cd ${THOME}/build || exit 1

PY3VER=311

if [ ! -x /usr/bin/wget ]; then
    echo "ERROR: unable to find wget"
    exit 1
fi
if [ ! -x /usr/bin/jq ]; then
    echo "ERROR: unable to find jq"
    exit 1
fi

if [ $# -gt 0 ]; then
    for file in "$@"
    do
	for pkgstr in $(egrep 'build/(unpack|pkg_pep518|pkg_setup_py)' ${file}/build.sh | awk '{print $NF}')
	do
	    pkgver=${pkgstr##*-}
	    pkgname=${pkgstr%-*}
	    if [ "${pkgname}" == "cloud-custodian" ]; then
		pkgname=c7n
		pkgver=${pkgver%.0}
	    fi
	    curver=$(wget -q -O - https://pypi.python.org/pypi/${pkgname}/json | jq .info.version)
	    curver=${curver//\"/}
	    if [ "X$pkgver" != "X$curver" ]; then
		echo "NEW VERSION $curver of $file, we have $pkgver"
	    else
		echo "$file is good"
	    fi
	done
    done
    exit 0
fi

#
# first look at packages built from wheels
#
egrep -H 'build/pkg_wheel' *-${PY3VER}/build.sh | while read -r ffile fpkgname fwheel
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
    if [ "${pkgname}" == "cloud-custodian" ]; then
	pkgname=c7n
	pkgver=${pkgver%.0}
    fi
    curver=$(wget -q -O - https://pypi.python.org/pypi/${pkgname}/json | jq .info.version)
    curver=${curver//\"/}
    if [ "X$pkgver" != "X$curver" ]; then
	echo "NEW VERSION $curver of $file, we have $pkgver"
    else
	echo "$file is good"
    fi
done

egrep -H 'build/(unpack|pkg_pep518|pkg_setup_py)' *-${PY3VER}/build.sh | while read -r ffile fpkgstr
do
    file=${ffile%%/*}
    pkgstr=${fpkgstr##* }
    pkgver=${pkgstr##*-}
    pkgname=${pkgstr%-*}
    if [ "${pkgname}" == "cloud-custodian" ]; then
	pkgname=c7n
	pkgver=${pkgver%.0}
    fi
    curver=$(wget -q -O - https://pypi.python.org/pypi/${pkgname}/json | jq .info.version)
    curver=${curver//\"/}
    if [ "X$pkgver" != "X$curver" ]; then
	echo "NEW VERSION $curver of $file, we have $pkgver"
    else
	echo "$file is good"
    fi
done
