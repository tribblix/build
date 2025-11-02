#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we don't really want heif-view, which would pull in libSDL
# but there doesn't seem to be a way to disable it in isolation
# so remove it with the fixit script
#
# downrev on sparc because it needs a newer gcc
#
${THOME}/build/cmbuild -64only libheif-1.20.1 -C "-DWITH_JPEG_ENCODER=YES -DWITH_JPEG_DECODER=YES -DWITH_OpenJPEG_ENCODER=YES -DWITH_OpenJPEG_DECODER=YES -DCMAKE_PREFIX_PATH=/usr/lib/`${THOME}/build/getarch`/cmake"
${THOME}/build/genpkg TRIBlibheif libheif-1.20.1
