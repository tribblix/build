#!/bin/sh
#
zap uninstall TRIBgraphviz
zap install openjpeg
# assumes a different webp than we have
${THOME}/build/dobuild -64 GraphicsMagick-1.3.38 -C "--without-webp --enable-shared --disable-static --disable-openmp"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.38
