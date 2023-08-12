#!/bin/sh
#
# needs leptonica
#
# downloads the training data during install, see the fixit script
#
env TRIBBLIX_LDFLAGS="-lsocket" $THOME/build/cmbuild -64only tesseract-5.3.2 -C  -DTESSDATA_PREFIX=/usr/share
${THOME}/build/genpkg TRIBtesseract tesseract-5.3.2
