#!/bin/sh
#
# needs to be built with the tcl/tk source, not the installed versions
#
${THOME}/build/unpack expect5.45
${THOME}/build/unpack tcl8.6.4-src
${THOME}/build/unpack tk8.6.4-src
cd expect5.45
./configure --prefix=/usr
gmake -j 8
${THOME}/build/genpkg TRIBexpect
