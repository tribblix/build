#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/cmbuild -64only optipng-7.9.1 -C -DOPTIPNG_USE_SYSTEM_LIBS=ON
${THOME}/build/genpkg TRIBoptipng optipng-7.9.1
