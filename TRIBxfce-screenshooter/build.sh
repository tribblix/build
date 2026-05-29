#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -gnu -64only xfce4-screenshooter-1.11.3
${THOME}/build/genpkg TRIBxfce-screenshooter xfce4-screenshooter-1.11.3
