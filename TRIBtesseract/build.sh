#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs leptonica
#
# downloads the training data during install, see the fixit script
#
env TRIBBLIX_LDFLAGS="-lsocket" $THOME/build/cmbuild -64only tesseract-5.3.4 -C  "-DTESSDATA_PREFIX=/usr/share -DBUILD_SHARED_LIBS=on -DBUILD_STATIC_LIBS=no"
${THOME}/build/genpkg TRIBtesseract tesseract-5.3.4
