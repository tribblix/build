#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# with icu (which it used to have anyway)
# with graphite2 (for LibreOffice)
#
# harfbuzz make strong guarantees about ABI compatibility, so updating
# should always be safe
#
zap install TRIBlibicu
$THOME/build/mesonbuild -64 harfbuzz-9.0.0 -C "-Dintrospection=disabled -Dglib=enabled -Dcairo=enabled -Dicu=enabled -Dfreetype=enabled -Dgraphite2=enabled"
${THOME}/build/genpkg TRIBharfbuzz harfbuzz-9.0.0
