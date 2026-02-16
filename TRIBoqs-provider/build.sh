#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's an assumption here that by the time this gets to being deployed,
# all relevant software will be 64-bit
#
${THOME}/build/cmbuild -64only oqs-provider-0.11.0 -C -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake
${THOME}/build/genpkg TRIBoqs-provider oqs-provider-0.11.0
