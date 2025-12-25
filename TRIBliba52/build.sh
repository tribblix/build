#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to use the Adelie Linux update; the original was always
# broken in 64-bit mode
#
${THOME}/build/dobuild -64only a52dec-v0.8.0 -C "--enable-shared --disable-static --with-pic"
${THOME}/build/genpkg TRIBliba52 a52dec-v0.8.0
