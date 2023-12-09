#!/bin/sh
#
# note that we have to install both 32-bit and 64-bit files into /usr/libexec
# as gst-plugin-scanner populates the registry and needs to match
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64 gstreamer-1.20.7 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dbenchmarks=disabled" +C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dbenchmarks=disabled -Dlibexecdir=/usr/libexec/`$THOME/build/getarch`"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.20.7
