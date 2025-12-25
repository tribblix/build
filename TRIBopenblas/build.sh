#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we only build 64-bit as the only consumers are scipy/numpy which are
# in a 64-bit python
#
${THOME}/build/unpack OpenBLAS-0.3.21
cd OpenBLAS-0.3.21
#
# this generates an assembler error on sparc, so put in the old
# 0.3.20 version, caused by
# https://github.com/OpenMathLib/OpenBLAS/commit/06ef015234584f57d6743a78df7a7a05f6b39c11
#
cp ${THOME}/build/patches/dnrm2.S kernel/sparc
#
# Intel - TARGET=PRESCOTT
# Sparc - TARGET=SPARC
#
gmake -j PREFIX=/usr BINARY=64 TARGET=PRESCOTT NO_STATIC=1 EXTRALIB+="-lm -lgfortran"
rm -fr /tmp/mm
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/tmp/mm/usr BINARY=64 TARGET=PRESCOTT NO_STATIC=1 EXTRALIB+="-lm -lgfortran"
cd ..
${THOME}/build/create_pkg TRIBopenblas /tmp/mm
rm -fr /tmp/mm
