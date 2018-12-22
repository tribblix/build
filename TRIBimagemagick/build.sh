#!/bin/sh
#
# 7.x required a rebuild of (at least) wmaker, emacs, inkscape
# and doesn't maintain binary compatibility, bumping the SONAME
# regularly, so disable it as a dependency when we can
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
${THOME}/build/dobuild -64 -E /etc -C "--enable-hdri=no" ImageMagick-6.9.10-19
${THOME}/build/genpkg TRIBimagemagick ImageMagick-6.9.10-19
