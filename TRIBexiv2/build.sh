#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/cmbuild -64only exiv2-0.28.9 -C "-DEXIV2_ENABLE_INIH=OFF"
${THOME}/build/genpkg TRIBexiv2 exiv2-0.28.9
