#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# sparc needs --enable-mmx=no
#
${THOME}/build/dobuild -64only SDL2_gfx-1.0.4
${THOME}/build/genpkg TRIBlibsdl2-gfx SDL2_gfx-1.0.4
