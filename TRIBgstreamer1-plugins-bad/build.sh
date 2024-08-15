#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu +64 gst-plugins-bad-1.20.7 -C "-Dintrospection=disabled -Dexamples=disabled -Dtests=disabled"
${THOME}/build/genpkg TRIBgstreamer1-plugins-bad gst-plugins-bad-1.20.7
