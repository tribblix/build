#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack mpage-2.5.8
cd mpage-2.5.8
gmake PREFIX=/usr CC="gcc -m64"
rm -fr /tmp/mm
gmake install PREFIX=/tmp/mm/usr
${THOME}/build/create_pkg TRIBmpage /tmp/mm
rm -fr /tmp/mm
cd ..
