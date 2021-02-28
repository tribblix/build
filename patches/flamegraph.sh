#!/bin/ksh

# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.

# Copyright 2019 OmniOS Community Edition (OmniOSce) Association.

# tweaked by PCT for Tribblix packaging

sbin="/usr/versions/FlameGraph"

function usage
{
        typeset msg="$*"
        [ -n "$msg" ] && echo "$msg"
        cat <<USAGE
Usage: flamegraph  [ -p pid ] [ -s seconds ] <output>

  Generates an interactive flamegraph SVG file as <output>

  -p pid          Trace activity from a particular process.
  -s secs         Specify how many seconds to spend gathering data (default: 60)
USAGE
        exit 2
}

secs=60
pid=

while getopts ":hp:s:" c "$@"; do
	case "$c" in
		p)	pid="$OPTARG" ;;
		s)	secs="$OPTARG" ;;
		h)	usage ;;
		:)	usage "option requires an argument -- $OPTARG" ;;
		*)	usage "invalid option -- $OPTARG" ;;
	esac
done

shift $(($OPTIND - 1))

ofile="$1"

[ -z "$ofile" ] && usage

if [ "`id -u`" -ne 0 ]; then
	echo "Permission denied, run flamegraph as root."
	exit 1
fi

tmpd=`mktemp -dt flamegraph.XXXXXX`

[ -n "$pid" ] && cond="pid==$pid" || cond="arg0"

set -e

echo "Capturing $secs seconds of kernel stacks..."
dtrace -q -x stackframes=100 \
	-n "profile-997 /$cond/ { @[stack()] = count(); }" \
	-n "tick-${secs}s { exit(0); }" \
	-o $tmpd/stacks

$sbin/stackcollapse.pl $tmpd/stacks > $tmpd/folded

echo "Generating $ofile"
$sbin/flamegraph.pl $tmpd/folded > "$ofile"

rm -rf $tmpd

