#!/bin/sh
#
${THOME}/build/dobuild xcpustate-2.9
cd xcpustate-2.9
rm -fr /tmp/xc
mkdir -p /tmp/xc/usr/bin /tmp/xc/usr/share/man/man1
cp xcpustate /tmp/xc/usr/bin
cp xcpustate.man /tmp/xc/usr/share/man/man1/xcpustate.1
${THOME}/build/create_pkg TRIBxcpustate /tmp/xc /tmp/pct
rm -fr /tmp/xc
