#!/bin/sh
#
# build pins some dependencies
# Cython>=0.29.35,<3.0
# pybind11>=2.10.4,<2.11.1
# pythran>=0.12.0,<0.15.0
#
# it's relatively hard work to get the build to be consistently 64-bit
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.11/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBscipy-python-311 scipy-1.11.4
