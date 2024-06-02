#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs patching to restore sanity to the compilation environment
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" FFLAGS=-m64 FORTRANFLAGS=-m64 LDFLAGS=-m64 PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N -C "-Csetup-args=-Dblas=openblas -Csetup-args=-Dlapack=openblas -Csetup-args=-Dallow-noblas=false" TRIBnumpy-python-312 numpy-1.26.4
