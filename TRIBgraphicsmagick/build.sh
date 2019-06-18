#!/bin/sh
#
zap uninstall TRIBgraphviz
zap install openjpeg
# assumes a different webp than we have
${THOME}/build/dobuild GraphicsMagick-1.3.32 -C "--without-webp --enable-shared --disable-static"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.32
