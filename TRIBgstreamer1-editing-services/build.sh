#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket" AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu +64 gst-editing-services-1.28.4 -C "-Dtests=disabled"
${THOME}/build/genpkg TRIBgstreamer1-editing-services gst-editing-services-1.28.4
