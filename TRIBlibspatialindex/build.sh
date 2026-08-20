#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only spatialindex-src-2.1.0
${THOME}/build/genpkg TRIBlibspatialindex spatialindex-src-2.1.0
