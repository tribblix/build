#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# only used by mate, so restrict to gtk3
#
${THOME}/build/dobuild -64only libcanberra-0.30 -C "--disable-gtk --enable-gtk3"
${THOME}/build/genpkg TRIBlibcanberra libcanberra-0.30
