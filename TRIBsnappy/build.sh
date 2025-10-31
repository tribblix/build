#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild +64 snappy-1.2.2 -C "-DSNAPPY_BUILD_TESTS=OFF -DSNAPPY_BUILD_BENCHMARKS=OFF -DBUILD_SHARED_LIBS=ON"
${THOME}/build/genpkg TRIBsnappy snappy-1.2.2
