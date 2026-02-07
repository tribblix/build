#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a pep518 build requires -N == --no-build-isolation otherwise it tries
# to build its own numpy, which would fail as it doesn't have the
# modifications we need to make it build successfully
#
# but that also means that we have to have all the modules that pip
# needs installed ahead of time, see build_require
#
# PATH so it can find the cython executable
# it drops -m64 somewhere, so force with CC
#
# it wants openmp, and won't build without it, so explicitly tell it
# where the libraries are to be found at runtime
#
env CC="gcc -m64" LDFLAGS="-m64 -R/usr/versions/gcc-10/lib/amd64" CXXFLAGS=-m64 CFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBscikit-learn-python-312 scikit_learn-1.8.0
