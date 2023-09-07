#!/bin/sh
#
# with icu (which it used to have anyway)
# with graphite2 (for LibreOffice)
#
zap install TRIBlibicu
$THOME/build/mesonbuild -64 harfbuzz-4.3.0 -C "-Dintrospection=disabled -Dglib=enabled -Dcairo=enabled -Dicu=enabled -Dfreetype=enabled -Dgraphite2=enabled"
${THOME}/build/genpkg TRIBharfbuzz harfbuzz-4.3.0
