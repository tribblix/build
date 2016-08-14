#!/bin/sh
#
# check dependencies of an installation directory
# (in other words, what gets put into DESTDIR)
#

case $# in
    2)
	THISPKG=$1
	DESTDIR=$2
	;;
    *)
	echo "Usage: $0 pkg_name installation_dir"
	exit 1
	;;
esac

if [ ! -d ${DESTDIR} ]; then
    echo "Cannot find $DESTDIR"
    exit 1
fi

if [ ! -d ${THOME}/build/${THISPKG} ]; then
    echo "Cannot find ${THOME}/build/${THISPKG}"
    exit 1
fi

#
# find the files assocated with this package
#
cd $DESTDIR
FLIST=/tmp/dep.fl.$$
rm -f $FLIST
TFILE=/tmp/dch.$$
rm -f $TFILE
find . -xdev -type f | egrep -v '/(share|pkgconfig|include)' > $FLIST
if [ -s $FLIST ]; then
    ${THOME}/build/autodepend `cat $FLIST` | grep -vw $THISPKG > $TFILE
else
    touch $TFILE
fi
if [ -s $TFILE ]; then
    if [ -f ${THOME}/build/${THISPKG}/depend ]; then
	diff ${THOME}/build/${THISPKG}/depend $TFILE > /dev/null
	if [ $? -ne 0 ]; then
	    echo "WARNING: dependency mismatch for $THISPKG"
	    diff ${THOME}/build/${THISPKG}/depend $TFILE
	fi
    else
	echo "WARNING: dependency mismatch for $THISPKG"
	echo "  no depend file found, but dependencies are"
	cat $TFILE
    fi
else
    if [ -f ${THOME}/build/${THISPKG}/depend ]; then
	echo "WARNING: dependency mismatch for $THISPKG"
	echo "  depend file found but no dependencies discovered"
    fi
fi
rm -f $TFILE
rm -f $FLIST
