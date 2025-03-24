#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a wrapper for the real testssl.sh
#
# it does a sanity check and then launches the real thing with
# a fixed environment
#

if [ ! -x /usr/gnu/bin/grep ]; then
    if [ ! -x /usr/bin/hexdump ]; then
	echo "ERROR: hexdump not installed, run the following as root:"
	echo "  zap install TRIBtext-utilities"
    fi
    echo "ERROR: gnu grep not installed, run the following as root:"
    echo "  zap install TRIBtext-gnu-grep"
    exit 1
fi

if [ ! -x /usr/bin/hexdump ]; then
    echo "ERROR: hexdump not installed, run the following as root:"
    echo "  zap install TRIBtext-utilities"
    exit 1
fi

PATH=/usr/gnu/bin:/usr/bin:/usr/sbin
export PATH
exec /usr/versions/testssl.sh/testssl.sh "$@"
