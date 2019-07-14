#!/bin/sh
#
# this uses the PyPi json api to checkwhether python modules need
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

PYVER=27
case $# in
    1)
	PYVER=$1
	;;
esac

WGET=/usr/bin/wget
JQ=/usr/bin/jq
if [ ! -x $WGET ]; then
    echo "ERROR: unable to find $WGET"
fi
if [ ! -x $JQ ]; then
    echo "ERROR: unable to find $JQ"
fi

for file in *-${PYVER}
do
    pkgstr=`grep build/unpack ${file}/build.sh | awk '{print $2}'`
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
