#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libXaw3d-1.6.6
${THOME}/build/genpkg TRIBx11-lib-toolkit-libxaw3d libXaw3d-1.6.6
