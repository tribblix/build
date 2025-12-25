#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
mkdir xsol
cd xsol
${THOME}/build/unpack xsol-0.31.source
gcc -O -o xsol -m64 xsol.c -lXm -lXt -lX11
rm -fr /tmp/xs
mkdir -p /tmp/xs/usr/bin
cp xsol /tmp/xs/usr/bin
${THOME}/build/create_pkg TRIBxsol /tmp/xs
rm -fr /tmp/xs
