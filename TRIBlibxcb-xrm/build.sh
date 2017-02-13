#!/bin/sh
#
# packaged separately as it's distributed independently
# used by the i3 window manager
#
${THOME}/build/dobuild -64 xcb-util-xrm-1.2
${THOME}/build/genpkg TRIBlibxcb-xrm xcb-util-xrm-1.2
