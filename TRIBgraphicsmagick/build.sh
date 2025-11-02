#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# downrev on sparc because it needs a newer libheif
#
zap uninstall TRIBgraphviz
#
${THOME}/build/dobuild -64only GraphicsMagick-1.3.46 -C "--enable-shared --disable-static --disable-openmp"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.46
