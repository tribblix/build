#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only gdal-3.9.0
${THOME}/build/genpkg TRIBgdal gdal-3.9.0
