#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only liboqs-0.15.0 -C "-DOQS_PERMIT_UNSUPPORTED_ARCHITECTURE=ON -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=OFF"
${THOME}/build/genpkg TRIBliboqs liboqs-0.15.0
