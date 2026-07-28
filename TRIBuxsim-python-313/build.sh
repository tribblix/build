#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# as of v1.14.0 shifted to nanobind
# must use -N as we have a patched nanobind to make this work
#
env CXXFLAGS=-m64 ${THOME}/build/pkg_pep518 -N TRIBuxsim-python-313 uxsim-1.14.0
