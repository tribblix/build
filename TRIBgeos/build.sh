#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only geos-3.12.1 -C "-DBUILD_TESTING=OFF -DBUILD_DOCUMENTATION=OFF"
${THOME}/build/genpkg TRIBgeos geos-3.12.1
