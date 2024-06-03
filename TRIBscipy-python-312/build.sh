#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.13.1 build pins some dependencies
# meson-python>=0.15.0,<0.18.0
# Cython>=3.0.8,<3.1.0
# pybind11>=2.12.0,<2.14.0
# pythran>=0.14.0,<0.16.0
# but we can try above the upper bound if necessary
#
# it's relatively hard work to get the build to be consistently 64-bit
#
# 1.13.1 fails with '_Atomic' does not name a type so back to 1.12.0
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBscipy-python-312 scipy-1.12.0
