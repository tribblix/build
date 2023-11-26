#!/bin/sh
#
# this project doesn't maintain binary compatibility, bumping the SONAME
# regularly, so disable it as a dependency when we can
#
zap uninstall TRIBgraphviz
zap install openjpeg libwebp
#
# need to disable openmp, otherwise it pulls in libgomp which we
# ship with the compiler rather than the runtime
#
${THOME}/build/dobuild -64 ImageMagick-7.1.1-21 -C "--disable-openmp ac_cv_have_linux_sendfile=no"
${THOME}/build/genpkg TRIBimagemagick ImageMagick-7.1.1-21
