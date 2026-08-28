#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" PATH=/usr/versions/python-3.13/bin:$PATH ${THOME}/build/pkg_pep518 -N -q TRIBstatsmodels-python-313 statsmodels-0.15.0
