#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild +64 libheif-1.19.5 -C "-DWITH_JPEG_ENCODER=YES -DWITH_JPEG_DECODER=YES -DWITH_OpenJPEG_ENCODER=YES -DWITH_OpenJPEG_DECODER=YES -DCMAKE_PREFIX_PATH=/usr/lib/`${THOME}/build/getarch`/cmake/openjpeg-2.5"
${THOME}/build/cmbuild +32 libheif-1.19.5 -C "-DWITH_JPEG_ENCODER=YES -DWITH_JPEG_DECODER=YES -DWITH_OpenJPEG_ENCODER=YES -DWITH_OpenJPEG_DECODER=YES"
${THOME}/build/genpkg TRIBlibheif libheif-1.19.5
