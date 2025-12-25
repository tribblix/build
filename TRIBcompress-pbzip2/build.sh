#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack pbzip2-1.1.13
cd pbzip2-1.1.13
gmake CXXFLAGS="-O -m64"
cd ..
${THOME}/build/genpkg TRIBcompress-pbzip2 pbzip2-1.1.13
