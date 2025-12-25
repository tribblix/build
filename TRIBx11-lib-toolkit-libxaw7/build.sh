#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXaw-1.0.16 -C --disable-xaw6
${THOME}/build/genpkg TRIBx11-lib-toolkit-libxaw7 libXaw-1.0.16
