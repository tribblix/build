#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# any update bumps the SONAME
#
${THOME}/build/cmbuild -64only geos-3.13.0 -C "-DBUILD_TESTING=OFF -DBUILD_DOCUMENTATION=OFF"
${THOME}/build/genpkg TRIBgeos geos-3.13.0
