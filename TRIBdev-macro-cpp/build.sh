#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the source version was shipped as package version 1.0.0
# but doesn't work for the gate build, or cde
# the closed binary was originally shipped as version 0.9.0
#
#$THOME/build/dobuild https://github.com/illumos/cpp
#${THOME}/build/genpkg TRIBdev-macro-cpp cpp
#
# Save the old binary like so
# (cd / ; tar cf ${THOME}/build/patches/binary-cpp.tar usr/lib/cpp)
# or for sparc
# (cd / ; tar cf ${THOME}/build/patches/binary-cpp.sparc.tar usr/lib/cpp)
#
${THOME}/build/genpkg TRIBdev-macro-cpp
