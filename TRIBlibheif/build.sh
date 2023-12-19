#!/bin/sh
#
# would like to add the OpenJPEG support too, but the openjpeg install
# is broken and mixes up 32- and 64-bit objects
#
${THOME}/build/cmbuild -64 libheif-1.17.5 -C "-DWITH_JPEG_ENCODER=YES -DWITH_JPEG_DECODER=YES"
${THOME}/build/genpkg TRIBlibheif libheif-1.17.5
