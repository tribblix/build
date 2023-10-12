#!/bin/sh
#
# specifying architecture directories for lib and bin doesn't work
# so they're corrected by the fixinstall.64 script
#
# need to not build static libs in the first place so the installed
# cmake config is consistent
#
env CFLAGS="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" $THOME/build/cmbuild -64 openjpeg-2.5.0 -C "-DBUILD_STATIC_LIBS=OFF -DBUILD_THIRDPARTY=OFF"
${THOME}/build/genpkg TRIBlib-openjpeg openjpeg-2.5.0
