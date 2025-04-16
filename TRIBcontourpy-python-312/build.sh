#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# without build isolation fails; the build requirement on pybind11 is
# incompatible with that for scipy
#
env CXX="g++ -m64" CC="gcc -m64" ${THOME}/build/pkg_pep518 TRIBcontourpy-python-312 contourpy-1.3.2
