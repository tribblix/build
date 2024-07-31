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
# Copyright 2024 Peter Tribble
#

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

if [ ! -d "${DESTDIR}" ]; then
    echo "Cannot find $DESTDIR"
    exit 1
fi

if [ ! -d "${THOME}/build/${THISPKG}" ]; then
    echo "Cannot find ${THOME}/build/${THISPKG}"
    exit 1
fi

MYARCH=$(uname -p)

#
# find the files associated with this package
#
# remove things that are obviously not going to be elf executables
#
cd "$DESTDIR" || exit 1
FLIST=/tmp/dep.fl.$$
rm -f "$FLIST"
TFILE=/tmp/dch.$$
rm -f "$TFILE"
find . -xdev -type f | egrep -v -e '/(share|pkgconfig|include|gems|node_modules)/' -e '\.(rb|txt|jar|c|h|java|md|pem|gemspec|py|pyc|html|js|svg)$' > $FLIST
if [ -s $FLIST ]; then
    ${THOME}/build/autodepend "$(<$FLIST)" | grep -vw "$THISPKG" > $TFILE
else
    touch $TFILE
fi
if [ -s $TFILE ]; then
    if [ -f "${THOME}/build/${THISPKG}/depend.${MYARCH}" ]; then
	diff "${THOME}/build/${THISPKG}/depend.${MYARCH}" $TFILE > /dev/null
	if [ $? -ne 0 ]; then
	    echo "WARNING: dependency mismatch for $THISPKG"
	    diff "${THOME}/build/${THISPKG}/depend.${MYARCH}" $TFILE
	fi
    elif [ -f "${THOME}/build/${THISPKG}/depend" ]; then
	diff "${THOME}/build/${THISPKG}/depend" $TFILE > /dev/null
	if [ $? -ne 0 ]; then
	    echo "WARNING: dependency mismatch for $THISPKG"
	    diff "${THOME}/build/${THISPKG}/depend" $TFILE
	fi
    else
	echo "WARNING: dependency mismatch for $THISPKG"
	echo "  no depend file found, but dependencies are"
	cat $TFILE
    fi
else
    if [ -f "${THOME}/build/${THISPKG}/depend.${MYARCH}" ]; then
	echo "WARNING: dependency mismatch for $THISPKG"
	echo "  depend file found but no dependencies discovered"
    elif [ -f "${THOME}/build/${THISPKG}/depend" ]; then
	echo "WARNING: dependency mismatch for $THISPKG"
	echo "  depend file found but no dependencies discovered"
    fi
fi
rm -f "$TFILE"
rm -f "$FLIST"
