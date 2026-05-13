#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# required by the adbc postgresql and sqlite drivers
# dependencies added for the [dbapi] extension
#
# the -D__STDC_NO_ATOMICS__=1 is to force Cython not to pull in stdatomic.h
# from C++ code, to avoid '_Atomic' does not name a type
#
# ideally that would be fixed further up
#
# needs a patch. just like adbc itself
#
env CXXFLAGS="-m64 -D__STDC_NO_ATOMICS__=1" ${THOME}/build/pkg_pep518 -N TRIBadbc-manager-python-313 adbc_driver_manager-1.10.0
