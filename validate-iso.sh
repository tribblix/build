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
# verify that the iso makes sense
#
THOME=${THOME:-/packages/localsrc/Tribblix}
export THOME

ODIR=${THOME}/overlays
ITYPE=""
INAME="regular "

#
# flags
# -d directory
# -t type (eg minimal)
#
while getopts "d:t:" opt; do
    case $opt in
    d)
	ODIR="$OPTARG"
	;;
    t)
	INAME="$OPTARG "
	ITYPE=".${OPTARG}"
	;;
    esac
done
shift $((OPTIND-1))

if [ ! -d $ODIR ]; then
    echo "ERROR: Unable to find $ODIR"
    exit 1
fi

OFILE="overlays${ITYPE}.iso"

cd ${ODIR}

if [ ! -f $OFILE ]; then
    echo "ERROR: Unable to find $OFILE"
    exit 1
fi

TFILE=/tmp/ival.$$

get_deps() {
    echo $1
    for dep in `awk -F= '{if ($1 == "REQUIRES") print $2}' ${1}.ovl`
    do
	get_deps $dep
    done
}

get_normal_deps (){
    #
    # the idea is that the iso should have the kitchen sink on it
    # but nothing else for applications
    #
    get_deps kitchen-sink
    #
    # also add the "all" driver overlays, and wifi
    #
    for ovl in $(ls -1d all-*.ovl | egrep -v all-fabric )
    do
	get_deps ${ovl%.ovl}
    done
    if [ -f wifi.ovl ]; then
	get_deps wifi
    fi
    if [ -f san-support.ovl ]; then
	get_deps san-support
    fi
    get_deps server-manage
}

get_minimal_deps (){
    #
    # the idea is that the minimal iso should have ec2 and pkgsrc on it
    # but nothing else for applications
    #
    get_deps ec2-baseline
    get_deps pkgsrc
    get_deps dbus-glib
    if [ -f san-support.ovl ]; then
	get_deps san-support
    fi
    #
    # also add the "all" driver overlays
    #
    for ovl in $(ls -1d all-*.ovl | egrep -v '(fabric|xorg|1394)')
    do
	get_deps ${ovl%.ovl}
    done
}

get_ec2_deps (){
    #
    # the idea is that the ec2 iso should have ec2 on it
    # but nothing else for applications
    #
    get_deps ec2-baseline
}

rm -f ${TFILE}.iso ${TFILE}.sorted

cat ${OFILE} | sort > ${TFILE}.iso
case $INAME in
    "minimal ")
	get_minimal_deps | sort -u > ${TFILE}.sorted
	;;
    "ec2 ")
	get_ec2_deps | sort -u > ${TFILE}.sorted
	;;
    *)
	get_normal_deps | sort -u > ${TFILE}.sorted
	;;
esac

ISDIFF=`diff ${TFILE}.iso ${TFILE}.sorted`
if [ -n "${ISDIFF}" ]; then
    echo "WARN: iso overlay mismatch"
    if [ -n "$DISPLAY" ]; then
	tkdiff ${TFILE}.iso ${TFILE}.sorted
    else
	diff ${TFILE}.iso ${TFILE}.sorted
    fi
else
    echo "DEBUG: ${INAME}iso overlays are good"
fi

rm -f ${TFILE}.iso ${TFILE}.sorted
