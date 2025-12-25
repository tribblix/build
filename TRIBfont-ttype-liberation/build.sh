#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# packaging requires mkfontscale from x11-font-utilities
# package requires fontconfig to provide the fc-cache service
#
${THOME}/build/unpack liberation-fonts-ttf-2.1.5
${THOME}/build/genpkg TRIBfont-ttype-liberation liberation-fonts-ttf-2.1.5
