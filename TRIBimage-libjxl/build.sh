#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf script to download its dependencies
# and a patch to align with the illumos toolchain
#
# we build the plugins and package, but don't declare a runtime dependency
# the dependency is only used in the event it's resolved, so is unnecessary
#
${THOME}/build/cmbuild -64only libjxl-0.10.4 -C "-DBUILD_TESTING=OFF -DJPEGXL_FORCE_SYSTEM_BROTLI=TRUE -DJPEGXL_FORCE_SYSTEM_LCMS2=TRUE -DJPEGXL_ENABLE_PLUGINS=TRUE"
${THOME}/build/genpkg TRIBimage-libjxl libjxl-0.10.4
