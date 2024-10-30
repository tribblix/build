#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# packaged separately as it's distributed independently
# used by the i3 window manager
#
${THOME}/build/dobuild -64only xcb-util-xrm-1.3
${THOME}/build/genpkg TRIBlibxcb-xrm xcb-util-xrm-1.3
