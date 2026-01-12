#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -64only freeciv-3.1.6 -C "--enable-ipv6=test --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfreeciv freeciv-3.1.6
