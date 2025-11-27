#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack ninja-1.13.2
cd ninja-1.13.2
env CFLAGS=-m64 python3.12 ./configure.py --bootstrap
rm -fr /tmp/n1
mkdir -p /tmp/n1/usr/bin
cp ninja /tmp/n1/usr/bin
${THOME}/build/create_pkg TRIBninja /tmp/n1
rm -fr /tmp/n1
