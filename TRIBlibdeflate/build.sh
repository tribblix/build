#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only libdeflate-1.23 -C "-DLIBDEFLATE_BUILD_STATIC_LIB=OFF"
${THOME}/build/genpkg TRIBlibdeflate libdeflate-1.23
