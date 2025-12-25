#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only xfce4-screenshooter-1.10.0
${THOME}/build/genpkg TRIBxfce-screenshooter xfce4-screenshooter-1.10.0
