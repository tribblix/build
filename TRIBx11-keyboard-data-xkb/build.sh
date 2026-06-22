#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild xkeyboard-config-2.48
${THOME}/build/genpkg TRIBx11-keyboard-data-xkb xkeyboard-config-2.48
