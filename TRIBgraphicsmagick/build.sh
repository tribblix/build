#!/bin/sh
#
zap uninstall TRIBgraphviz
zap install openjpeg
#
${THOME}/build/dobuild -64only GraphicsMagick-1.3.40 -C "--enable-shared --disable-static --disable-openmp"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.40
