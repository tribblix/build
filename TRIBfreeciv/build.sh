#!/bin/sh
#
$THOME/build/dobuild -64only freeciv-3.0.10 -C "--enable-ipv6=test --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfreeciv freeciv-3.0.10
