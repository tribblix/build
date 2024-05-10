#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack cmake-3.29.3
cd cmake-3.29.3
./bootstrap --prefix=/usr/versions/cmake-3.29 -- -DCMAKE_USE_OPENSSL=ON
gmake -j 4
# [gmake test - all passed]
${THOME}/build/genpkg TRIBcmake
cd ..
