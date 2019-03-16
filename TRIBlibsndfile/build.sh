#!/bin/sh
#
${THOME}/build/gitarchive https://github.com/erikd/libsndfile
${THOME}/build/cmbuild -64 libsndfile -C "-DBUILD_SHARED_LIBS=on -DBUILD_STATIC_LIBS=no"
${THOME}/build/genpkg TRIBlibsndfile libsndfile
