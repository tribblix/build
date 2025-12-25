#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only gpicview-0.2.5 -C --enable-gtk3
${THOME}/build/genpkg TRIBgpicview gpicview-0.2.5
