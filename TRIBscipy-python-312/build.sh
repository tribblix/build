#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.14.1 build pins some dependencies
# meson-python>=0.15.0,<0.19.0
# Cython>=3.0.8,<3.1.0
# pybind11>=2.12.0,<2.13.0
# pythran>=0.14.0,<0.17.0
# but we can try above the upper bound if necessary
#
# it's relatively hard work to get the build to be consistently 64-bit
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
# ideally that would be fixed further up
#
env CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBscipy-python-312 scipy-1.16.1
