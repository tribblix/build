#!/bin/sh
#
#
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64 gstreamer-1.20.3 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dbenchmarks=disabled"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.20.3
