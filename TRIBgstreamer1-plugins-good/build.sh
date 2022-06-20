#!/bin/sh
#
# qt5 is an undeclared dependency as we don't really want to pull
# all of that in
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64 gst-plugins-good-1.20.3 -C "-Dexamples=disabled -Dtests=disabled"
${THOME}/build/genpkg TRIBgstreamer1-plugins-good gst-plugins-good-1.20.3
