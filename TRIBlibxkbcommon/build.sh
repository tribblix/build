#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# xkbregistry pulls in libxml2 as an extra dependency, and wasn't
# present in the earlier versions we shipped
#
$THOME/build/mesonbuild -64only libxkbcommon-xkbcommon-1.12.0 -C "-Denable-wayland=false -Denable-xkbregistry=false"
${THOME}/build/genpkg TRIBlibxkbcommon libxkbcommon-xkbcommon-1.12.0
