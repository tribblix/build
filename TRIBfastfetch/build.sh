#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a regular patch, and a custom patch to add our logo
#
${THOME}/build/cmbuild -64only fastfetch-2.60.0 -C -DENABLE_DRM=OFF
${THOME}/build/genpkg TRIBfastfetch fastfetch-2.60.0
