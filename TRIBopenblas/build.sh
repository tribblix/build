#!/bin/sh
#
# we only build 64-bit as the only consumers are scipy/numpy which are
# in a 64-bit python
#
${THOME}/build/unpack -64 OpenBLAS-0.3.21
cd OpenBLAS-0.3.21
gmake -j PREFIX=/usr TARGET=PRESCOTT NO_STATIC=1 EXTRALIB+="-lm -lgfortran"
rm -fr /tmp/mm
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/tmp/mm/usr BINARY=64 TARGET=PRESCOTT NO_STATIC=1 EXTRALIB+="-lm -lgfortran"
cd ..
${THOME}/build/create_pkg TRIBopenblas /tmp/mm
rm -fr /tmp/mm
