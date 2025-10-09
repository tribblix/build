#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the normal cmake bin and lib directories aren't honored, it uses its own
#
# need to not build static libs in the first place so the installed
# cmake config is consistent
#
env CFLAGS="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" $THOME/build/cmbuild +64 openjpeg-2.5.4 -C "-DBUILD_STATIC_LIBS=OFF -DBUILD_THIRDPARTY=OFF -DOPENJPEG_INSTALL_BIN_DIR=bin/`$THOME/build/getarch` -DOPENJPEG_INSTALL_LIB_DIR=lib/`$THOME/build/getarch`"
env CFLAGS="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" $THOME/build/cmbuild +32 openjpeg-2.5.4 -C "-DBUILD_STATIC_LIBS=OFF -DBUILD_THIRDPARTY=OFF"
${THOME}/build/genpkg TRIBlib-openjpeg openjpeg-2.5.4
