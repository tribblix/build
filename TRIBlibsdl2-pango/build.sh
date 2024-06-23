#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only SDL2_Pango-2.1.5
${THOME}/build/genpkg TRIBlibsdl2-pango SDL2_Pango-2.1.5
