#!/bin/sh
#
${THOME}/build/unpack -64 OpenBLAS-0.2.20
cd OpenBLAS-0.2.20
gmake -j PREFIX=/usr TARGET=PRESCOTT
cd ..
cd OpenBLAS-0.2.20-64bit
gmake -j PREFIX=/usr BINARY=64 TARGET=PRESCOTT
cd ..
rm -fr /tmp/mm
cd OpenBLAS-0.2.20-64bit
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/tmp/mm/usr MACHDIR=`isainfo -k`
cd ..
cd OpenBLAS-0.2.20
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/tmp/mm/usr
cd ..
${THOME}/build/create_pkg TRIBopenblas /tmp/mm
rm -fr /tmp/mm
