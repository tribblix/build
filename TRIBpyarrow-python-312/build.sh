#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
# ideally that would be fixed further up
#
# you must have the same tweak to int_types.h (int8_t forced to signed char)
# as arrow itself, so that the mangled symbol names match up
#
# set PYARROW_WITH_${feature} for every optional feature enabled in the
# arrow build itself
#
env PYARROW_WITH_DATASET=1 PYARROW_WITH_PARQUET=1 PYARROW_WITH_JSON=1 PYARROW_WITH_CSV=1 PYARROW_WITH_FILESYSTEM=1 PYARROW_WITH_COMPUTE=1 CC="gcc -m64" FLAGS=-m64 CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" LDFLAGS=-m64 CMAKE_PREFIX_PATH=/usr/lib/amd64/cmake ${THOME}/build/pkg_pep518 -N TRIBpyarrow-python-312 pyarrow-22.0.0
