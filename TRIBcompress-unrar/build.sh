#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -n unrar unrarsrc-7.1.1 -M CXX="c++ -m64"
cd unrarsrc-7.1.1-64bit
rm -fr /tmp/uu
mkdir -p /tmp/uu/usr/bin
cp unrar /tmp/uu/usr/bin
${THOME}/build/create_pkg TRIBcompress-unrar /tmp/uu
cd ..
rm -fr /tmp/uu
