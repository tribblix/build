#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/gitarchive https://github.com/libsndfile/libsndfile
${THOME}/build/cmbuild -64 libsndfile -C "-DBUILD_SHARED_LIBS=on -DBUILD_STATIC_LIBS=no"
${THOME}/build/genpkg TRIBlibsndfile libsndfile
