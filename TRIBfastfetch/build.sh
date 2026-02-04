#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only fastfetch-2.58.0 -C -DENABLE_DRM=OFF
${THOME}/build/genpkg TRIBfastfetch fastfetch-2.58.0
