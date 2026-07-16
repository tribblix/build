#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's an assumption here that by the time this gets to being deployed,
# all relevant software will be 64-bit
#
# build from git as the latest release won't build against current liboqs
#
${THOME}/build/cmbuild -64only https://github.com/open-quantum-safe/oqs-provider -C -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake
${THOME}/build/genpkg TRIBoqs-provider oqs-provider
