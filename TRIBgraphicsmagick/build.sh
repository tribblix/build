#!/bin/sh
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
${THOME}/build/dobuild GraphicsMagick-1.3.25 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBgraphicsmagick GraphicsMagick-1.3.25
