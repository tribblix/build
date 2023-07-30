#!/bin/sh
#
# Rebuild harfbuzz, with icu, and 64-bit (which it used to have anyway)
zap install TRIBlibicu
$THOME/build/mesonbuild -64 harfbuzz-4.3.0 -C "-Dintrospection=disabled -Dglib=enabled -Dcairo=enabled -Dicu=enabled -Dfreetype=enabled"
${THOME}/build/genpkg TRIBharfbuzz harfbuzz-4.3.0
