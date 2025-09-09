#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack cmake-3.31.8
cd cmake-3.31.8
./bootstrap --prefix=/usr/versions/cmake-3 -- -DCMAKE_USE_OPENSSL=ON
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBcmake
cd ..
