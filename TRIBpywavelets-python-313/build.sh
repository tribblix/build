#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LDFLAGS=-m64 CXXFLAGS=-m64 CFLAGS=-m64 PATH=/usr/versions/python-3.13/bin:$PATH ${THOME}/build/pkg_pep518 -N TRIBpywavelets-python-313 pywavelets-1.9.0
