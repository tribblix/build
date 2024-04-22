#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# building with -DARROW_PARQUET=ON fails, see
# https://github.com/apache/arrow/issues/41338
# I can't see how the code can possibly work, given that char
# should always be int8_t or uint8_t depending on signedness
#
$THOME/build/cmbuild -64only -S cpp apache-arrow-16.0.0 -C "-DARROW_JEMALLOC=OFF -DARROW_BUILD_STATIC=OFF -DARROW_COMPUTE=ON -DARROW_FILESYSTEM=ON -DARROW_CSV=ON -DARROW_DATASET=ON -DARROW_JSON=ON"
${THOME}/build/genpkg TRIBapache-arrow apache-arrow-16.0.0
