#!/bin/sh
#
# 7.x requires a rebuild of (at least) wmaker, emacs, inkscape 
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
${THOME}/build/dobuild ImageMagick-6.9.6-6
${THOME}/build/genpkg TRIBimagemagick ImageMagick-6.9.6-6
