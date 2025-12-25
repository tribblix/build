#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/mesonbuild -gnu -64only gnome-tetravex-3.38.2
${THOME}/build/genpkg TRIBtetravex gnome-tetravex-3.38.2
