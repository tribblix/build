#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
# ideally that would be fixed further up
#
# version compatibility in numpy is somewhat unusual, in that you can't
# build against numpy 1.x and run with 2.x, but you can build with 2.x
# and run with 1.x
#
env CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N -C "-Csetup-args=-Dblas=openblas -Csetup-args=-Dlapack=openblas -Csetup-args=-Dallow-noblas=false" TRIBnumpy-python-312 numpy-2.3.5
