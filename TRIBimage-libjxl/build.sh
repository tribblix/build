#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf script to download its dependencies
# and a patch to align with the illumos toolchain
#
${THOME}/build/cmbuild -64only libjxl-0.10.3 -C "-DBUILD_TESTING=OFF -DJPEGXL_FORCE_SYSTEM_BROTLI=TRUE -DJPEGXL_FORCE_SYSTEM_LCMS2=TRUE"
${THOME}/build/genpkg TRIBimage-libjxl libjxl-0.10.3
