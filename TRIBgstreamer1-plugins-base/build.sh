#!/bin/sh
#
# I think -Dgl_api=opengl is the same as what  --disable-gles2 meant for
# the old configure script
#
# sparc needs -Dgl-graphene=disabled
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64 gst-plugins-base-1.20.3 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dgl_api=opengl"
${THOME}/build/genpkg TRIBgstreamer1-plugins-base gst-plugins-base-1.20.3
