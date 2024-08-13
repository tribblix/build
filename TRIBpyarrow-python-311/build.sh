#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you must have the same tweak to int_types.h (int8_t forced to signed char)
# as arrow itself, so that the mangled symbol names match up
#
# set PYARROW_WITH_${feature} for every optional feature enabled in the
# arrow build itself
#
env PYARROW_WITH_DATASET=1 PYARROW_WITH_PARQUET=1 PYARROW_WITH_JSON=1 PYARROW_WITH_CSV=1 PYARROW_WITH_FILESYSTEM=1 PYARROW_WITH_COMPUTE=1 CC="gcc -m64" FLAGS=-m64 CXXFLAGS=-m64 LDFLAGS=-m64 CMAKE_PREFIX_PATH=/usr/lib/amd64/cmake ${THOME}/build/pkg_pep518 -N TRIBpyarrow-python-311 pyarrow-17.0.0
