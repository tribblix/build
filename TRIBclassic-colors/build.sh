#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to fix install paths and make it 64-bit
#
$THOME/build/dobuild -64only https://github.com/justinmeiners/classic-colors

cd classic-colors-64bit

rm -fr /tmp/xd1
mkdir -p /tmp/xd1/usr/bin
cp bin/classic-colors /tmp/xd1/usr/bin
mkdir -p /tmp/xd1/usr/share/classic-colors/help
cp help/* /tmp/xd1/usr/share/classic-colors/help
${THOME}/build/create_pkg TRIBclassic-colors /tmp/xd1
