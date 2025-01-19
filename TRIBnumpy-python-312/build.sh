#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
# ideally that would be fixed further up
#
env CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N -C "-Csetup-args=-Dblas=openblas -Csetup-args=-Dlapack=openblas -Csetup-args=-Dallow-noblas=false" TRIBnumpy-python-312 numpy-2.2.2
