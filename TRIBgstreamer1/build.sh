#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that we have to install both 32-bit and 64-bit files into /usr/libexec
# as gst-plugin-scanner populates the registry and needs to match
#
# there are 32 and 64-bit postconf patches to ensure that there are different
# registries for 32 and 64-bit applications, otherwise one will crash
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu -64 gstreamer-1.20.7 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dbenchmarks=disabled" +C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled -Dbenchmarks=disabled -Dlibexecdir=/usr/libexec/`$THOME/build/getarch`"
${THOME}/build/genpkg TRIBgstreamer1 gstreamer-1.20.7
