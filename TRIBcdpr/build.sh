#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a postconf script that sets the Makefile up with the
# right flags, including for a 64-bit build
#
${THOME}/build/dobuild cdpr-2.4
mkdir -p /tmp/cc/usr/sbin
cp cdpr-2.4/cdpr /tmp/cc/usr/sbin
${THOME}/build/create_pkg TRIBcdpr /tmp/cc
rm -fr /tmp/cc
