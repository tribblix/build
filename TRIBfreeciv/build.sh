#!/bin/sh
#
$THOME/build/dobuild freeciv-3.0.7 -C "--enable-ipv6=test --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfreeciv freeciv-3.0.7
