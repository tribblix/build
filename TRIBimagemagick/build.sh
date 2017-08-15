#!/bin/sh
#
# 7.x requires a rebuild of (at least) wmaker, emacs, inkscape 
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
${THOME}/build/dobuild -64 ImageMagick-7.0.6-7
${THOME}/build/genpkg TRIBimagemagick ImageMagick-7.0.6-7
