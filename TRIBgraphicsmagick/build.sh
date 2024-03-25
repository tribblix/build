#!/bin/sh
#
zap uninstall TRIBgraphviz
#
${THOME}/build/dobuild -64only GraphicsMagick-1.3.43 -C "--enable-shared --disable-static --disable-openmp"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.43
