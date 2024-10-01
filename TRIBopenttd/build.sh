#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs TRIBlibsdl2
#
# current requires charconv, but doesn't check for it - that came in with gcc8
# so we need to be downrev on sparc which only has gcc7
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only openttd-13.4 -C -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake
$THOME/build/genpkg TRIBopenttd openttd-13.4
