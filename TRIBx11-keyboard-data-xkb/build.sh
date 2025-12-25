#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu xkeyboard-config-2.24
${THOME}/build/genpkg TRIBx11-keyboard-data-xkb xkeyboard-config-2.24
