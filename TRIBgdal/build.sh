#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# updates bump the SONAME
#
${THOME}/build/cmbuild -64only gdal-3.12.3
${THOME}/build/genpkg TRIBgdal gdal-3.12.3
