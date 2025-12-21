#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a pep518 build requires -N = --no-build-isolation otherwise it tries
# to build its own numpy, which would fail as it doesn't have the
# modifications we need to make it build successfully
#
# but that also means that we have to have all the modules that pip
# needs installed ahead of time, see build_require
#
# PATH so it can find the cython executable
# Need to pass -m64 down to meson
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
env LDFLAGS=-m64 CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" CFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBscikit-image-python-312 scikit_image-0.26.0
