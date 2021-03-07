#!/bin/sh
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
cd ${THOME}/build

PY3VER=37

WGET=/usr/bin/wget
JQ=/usr/bin/jq
if [ ! -x $WGET ]; then
    echo "ERROR: unable to find $WGET"
    exit 1
fi
if [ ! -x $JQ ]; then
    echo "ERROR: unable to find $JQ"
    exit 1
fi

if [ $# -gt 0 ]; then
    for file in $*
    do
	for pkgstr in `grep build/unpack ${file}/build.sh | awk '{print $2}'`
	do
	    pkgver=${pkgstr##*-}
	    pkgname=${pkgstr%-*}
	    curver=`wget -q -O - https://pypi.python.org/pypi/${pkgname}/json | jq .info.version`
	    curver=`echo $curver | sed -e 's:"::g'`
	    if [ "X$pkgver" != "X$curver" ]; then
		echo "NEW VERSION $curver of $file, we have $pkgver"
	    else
		echo "$file is good"
	    fi
	done
    done
    exit 0
fi

for file in *-${PY3VER}
do
    for pkgstr in `grep build/unpack ${file}/build.sh | awk '{print $2}'`
    do
	pkgver=${pkgstr##*-}
	pkgname=${pkgstr%-*}
	curver=`wget -q -O - https://pypi.python.org/pypi/${pkgname}/json | jq .info.version`
	curver=`echo $curver | sed -e 's:"::g'`
	if [ "X$pkgver" != "X$curver" ]; then
	    echo "NEW VERSION $curver of $file, we have $pkgver"
	else
	    echo "$file is good"
	fi
    done
done
