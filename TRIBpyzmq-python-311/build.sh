#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# builds the bundled native libzmq, rather than using a system one
#
# the setup.py build fails, as it builds things quite differently
# need to pass flags through to cmake
#
env CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS=-m64 ${THOME}/build/pkg_pep518 TRIBpyzmq-python-311 pyzmq-26.1.0
