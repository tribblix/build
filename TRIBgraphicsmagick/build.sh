#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
zap uninstall TRIBgraphviz
#
${THOME}/build/dobuild -64only GraphicsMagick-1.3.46 -C "--enable-shared --disable-static --disable-openmp"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.46
