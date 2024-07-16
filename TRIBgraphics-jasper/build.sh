#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# disable opengl to keep the dependency tree
# tight; ditto heif which is marked experimental
#
$THOME/build/cmbuild -64only jasper-4.2.4 -C "-DJAS_ENABLE_OPENGL=OFF -DJAS_ENABLE_LIBHEIF=OFF -DALLOW_IN_SOURCE_BUILD=TRUE"
${THOME}/build/genpkg TRIBgraphics-jasper jasper-4.2.4
