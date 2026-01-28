#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# building with -DARROW_PARQUET=ON fails, see
# https://github.com/apache/arrow/issues/41338
# the fix is to force int8_t to be explicitly 'signed char'
# rather than 'char' (see /usr/include/sys/int_types.h)
# as in https://www.illumos.org/issues/16523
#
# as the SONAME gets bumped, consumers (ie pyarrow) will need to
# be updated and rebuilt at the same time as this package
#
$THOME/build/cmbuild -64only -S cpp apache-arrow-23.0.0 -C "-DARROW_JEMALLOC=OFF -DARROW_BUILD_STATIC=OFF -DARROW_COMPUTE=ON -DARROW_FILESYSTEM=ON -DARROW_CSV=ON -DARROW_DATASET=ON -DARROW_JSON=ON -DARROW_PARQUET=ON -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake"
${THOME}/build/genpkg TRIBapache-arrow apache-arrow-23.0.0
