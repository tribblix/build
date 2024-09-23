#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS=-m64 ${THOME}/build/pkg_pep518 TRIBpycairo-python-312 pycairo-1.27.0
