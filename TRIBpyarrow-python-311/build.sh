#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" FLAGS=-m64 CXXFLAGS=-m64 LDFLAGS=-m64 CMAKE_PREFIX_PATH=/usr/lib/amd64/cmake ${THOME}/build/pkg_pep518 -N TRIBpyarrow-python-311 pyarrow-16.0.0
