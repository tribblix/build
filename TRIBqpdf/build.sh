#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/cmbuild -64only qpdf-12.3.2 -C "-DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=OFF"
${THOME}/build/genpkg TRIBqpdf qpdf-12.3.2
