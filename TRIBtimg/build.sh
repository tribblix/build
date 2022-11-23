#!/bin/sh
#
${THOME}/build/cmbuild -64only timg-1.4.5 -C -DWITH_VIDEO_DECODING=false
${THOME}/build/genpkg TRIBtimg timg-1.4.5
