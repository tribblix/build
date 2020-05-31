#!/bin/sh
#
# 7.x required a rebuild of (at least) wmaker, emacs, inkscape
# and doesn't maintain binary compatibility, bumping the SONAME
# regularly, so disable it as a dependency when we can
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
#
# need to disable openmp, otherwise it pulls in libgomp which we
# ship with the compiler rather than the runtime
#
${THOME}/build/dobuild -64 ImageMagick-6.9.11-15 -C --disable-openmp
${THOME}/build/genpkg TRIBimagemagick ImageMagick-6.9.11-15
