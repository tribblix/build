#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# as of v10.6 shifted from pybind to nanobind
# must use -N as we have a patched nanobind to make this work
#
env CXXFLAGS=-m64 ${THOME}/build/pkg_pep518 -N TRIBpikepdf-python-313 pikepdf-10.7.2
