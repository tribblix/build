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
# Copyright 2023 Peter Tribble
#

#
# check files end in a newline
#
for file in $*
do
    if [ -d $file ]; then
	continue
    fi
    #
    # ignore zero-length files (like allowstatic)
    #
    if [ -s $file ]; then
	#
	# force binaries, not builtins
	#
	nl=`/usr/bin/tail -1 $file|/usr/bin/wc -l`
	#
	# cheat to trim surrounding spaces
	#
	nl=$(( $nl ))
	case $nl in
	    0)
		echo "FAIL: no newline at end of $file"
		;;
	esac
	#
	# ignore trailing blank lines for certain files in patches
	#
	case $file in
	    *.patch|*mapfile*|*.map|patches/*.conf)
		continue
		;;
	esac
	#
	# and trailing blank lines, builtins are fine here
	#
	nw=`tail -1 $file|wc -w`
	#
	# cheat to trim surrounding spaces
	#
	nw=$(( $nw ))
	case $nw in
	    0)
		echo "FAIL: blank line at end of $file"
		;;
	esac
    fi
done
