#!/bin/sh
#
# this is a 2-stage build that bundles libdmapsharing and dmspd
#
$THOME/build/dobuild +64 libdmapsharing-3.9.10 -C --disable-introspection
# pkg
$THOME/build/dobuild -64only dmapd-0.0.95
${THOME}/build/genpkg TRIBdmapd libdmapsharing-3.9.10 dmapd-0.0.95
