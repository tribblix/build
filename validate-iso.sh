#!/bin/sh
#
# verify that the iso makes sense
#
THOME=${THOME:-/packages/localsrc/Tribblix}
export THOME

case $# in
    0)
	ODIR="${THOME}/overlays"
	;;
    1)
	ODIR=$1
	;;
    *)
	echo "Usage: $0 [overlay_dir]"
	exit 1
	;;
esac

if [ ! -d $ODIR ]; then
    echo "ERROR: Unable to find $ODIR"
    exit 1
fi

cd ${ODIR}

TFILE=/tmp/ival.$$

get_deps() {
    echo $1
    for dep in `grep '^REQUIRES=' ${1}.ovl | awk -F= '{print $2}'`
    do
	#echo $dep
	get_deps $dep
    done
}

get_all_deps (){
    #
    # the idea is that the iso should have the kitchen sink on it
    # but nothing else for applications
    #
    get_deps kitchen-sink | sort | uniq
    #
    # also add the "all" driver overlays, and wifi
    #
    for ovl in all-*.ovl
    do
	get_deps ${ovl%.ovl}
    done
    if [ -f wifi.ovl ]; then
	get_deps wifi
    fi
    if [ -f boot-server.ovl ]; then
	get_deps boot-server
    fi
    get_deps server-manage
}

rm -f ${TFILE}.iso ${TFILE}.sorted

cat overlays.iso | sort > ${TFILE}.iso
get_all_deps | sort | uniq > ${TFILE}.sorted

ISDIFF=`diff ${TFILE}.iso ${TFILE}.sorted`
if [ -n "${ISDIFF}" ]; then
    echo "WARN: iso overlay mismatch"
    if [ -n "$DISPLAY" ]; then
	tkdiff ${TFILE}.iso ${TFILE}.sorted
    else
	diff ${TFILE}.iso ${TFILE}.sorted
    fi
else
    echo "DEBUG: iso overlays are good"
fi

rm -f ${TFILE}.iso ${TFILE}.sorted
