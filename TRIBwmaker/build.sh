#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only WindowMaker-0.96.0 -C "--disable-magick --disable-pango"
${THOME}/build/genpkg TRIBwmaker WindowMaker-0.96.0
