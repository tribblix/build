#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu +64 gstreamer-vaapi-1.20.7 -C "-Dtests=disabled"
${THOME}/build/genpkg TRIBgstreamer1-vaapi gstreamer-vaapi-1.20.7
