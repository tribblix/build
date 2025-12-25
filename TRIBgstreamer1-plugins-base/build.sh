#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# I think -Dgl_api=opengl is the same as what --disable-gles2 meant for
# the old configure script
#
# sparc needs -Dgl-graphene=disabled
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu -64 gst-plugins-base-1.20.7 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dgl_api=opengl -Dgl-graphene=disabled"
${THOME}/build/genpkg TRIBgstreamer1-plugins-base gst-plugins-base-1.20.7
