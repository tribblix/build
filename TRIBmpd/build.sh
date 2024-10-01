#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# modplug and sndfile are incompatible and break the build
#
${THOME}/build/mesonbuild -64only mpd-0.23.15 -C -Dmodplug=disabled
${THOME}/build/genpkg TRIBmpd mpd-0.23.15
