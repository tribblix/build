#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# force the use of the system freetype
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N -C --config-settings=setup-args=-Dsystem-freetype=true TRIBmatplotlib-python-312 matplotlib-3.10.7
