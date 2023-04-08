#!/bin/sh
#
# specifying architecture directories for lib and bin doesn't work
# so they're corrected by the fixinstall.64 script
cd ..
env CFLAGS="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" $THOME/build/cmbuild -64 openjpeg-2.5.0
${THOME}/build/genpkg TRIBlib-openjpeg openjpeg-2.5.0
