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
# Copyright 2024 Peter Tribble
#

#
# does a full check of a given python module package
#

THOME=${THOME:-/packages/localsrc/Tribblix}

bail() {
    echo "ERROR: $1"
    exit 1
}

DLSTYLE="sdist"
DLTEXT="tarball"
case $1 in
    -w)
	DLSTYLE="bdist_wheel"
	DLTEXT="wheel"
	shift
	;;
esac

case $# in
    3)
	PKG="$1"
	PYPKG="$2"
	PYVER="$3"
	;;
    *)
	bail "Usage: $0 pkgname modname modver"
	;;
esac

if [ ! -d "${THOME}/build/${PKG}" ]; then
    bail "No Tribblix package $PKG"
fi

#
# grab the json from pypi, and save it for future processing
# that way, we can run multiple analyses of the data we get
# back
#

JFILE="/tmp/ppc.$$.json"
rm -f "${JFILE}"
/usr/bin/curl -s -L -o "${JFILE}" https://pypi.python.org/pypi/"${PYPKG}"/json

#
# first get the current version and check against that supplied
#
curver=$(jq .info.version $JFILE)
curver=${curver//\"/}
if [ "X$PYVER" != "X$curver" ]; then
    echo "NEW VERSION $curver of $PKG, we have $PYVER"
else
    echo "$PKG is good"
fi

#
# pick the current version out of the file, and get the filename,
# checksum, and download url for that file
# we get fields called file: url: sha: in that order
# potentially multiple times, which is the awkward piece
#
pfile=""
purl=""
psha=""
jq '.releases."'"${PYVER}"'"[]|select(.packagetype=="'${DLSTYLE}'")|"file: \(.filename)","url: \(.url)","sha: \(.digests.sha256)"' $JFILE | while read -r line
do
    line=${line//\"/}
    lkey=${line%% *}
    lval=${line##* }
    case $lkey in
	file:)
	    pfile="${lval}"
	    ;;
	url:)
	    purl="${lval}"
	    ;;
	sha:)
	    psha="${lval}"
	    ;;
    esac
    #
    # once we have a sha then we've read all 3
    # do the actual tests, then reset to blank just in case we go round again
    #
    # if we find a valid source file, we're in good shape so exit
    #
    if [ -n "${psha}" ]; then
	if [ -f "${THOME}/tarballs/${pfile}" ]; then
	    osha=$(openssl sha256 "${THOME}/tarballs/${pfile}"|awk '{print $NF}')
	    if [ "X${psha}" != "X${osha}" ]; then
		echo "ERROR: checksum mismatch for ${pfile}"
		echo "expected ${psha}"
		echo "actual ${osha}"
	    else
		exit 0
	    fi
	fi
	pfile=""
	purl=""
	psha=""
    fi
done

#
# if we reach here then we haven't found a valid source file
#
pfile=""
purl=""
psha=""
jq '.releases."'"${PYVER}"'"[]|select(.packagetype=="'${DLSTYLE}'")|"file: \(.filename)","url: \(.url)","sha: \(.digests.sha256)"' $JFILE | while read -r line
do
    line=${line//\"/}
    lkey=${line%% *}
    lval=${line##* }
    case $lkey in
	file:)
	    pfile="${lval}"
	    ;;
	url:)
	    purl="${lval}"
	    ;;
	sha:)
	    psha="${lval}"
	    ;;
    esac
    #
    # once we have a sha then we've read all 3
    # do the actual tests, then reset to blank just in case we go round again
    #
    if [ -n "${psha}" ]; then
	if [ ! -f "${THOME}/tarballs/${pfile}" ]; then
	    echo "WARN: source ${DLTEXT} ${pfile} missing"
	    echo "wget -O ${THOME}/tarballs/${pfile} ${purl}"
	fi
	pfile=""
	purl=""
	psha=""
    fi
done

rm -f "${JFILE}"
