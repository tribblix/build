#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xdpyinfo-1.4.0
${THOME}/build/dobuild -64only xdriinfo-1.0.8
${THOME}/build/mesonbuild -64only xlsatoms-1.1.5
${THOME}/build/mesonbuild -64only xlsclients-1.1.6
${THOME}/build/mesonbuild -64only xlsfonts-1.0.9
${THOME}/build/dobuild -64only xvinfo-1.1.5
${THOME}/build/dobuild -64only xwininfo-1.1.6 -C --with-xcb-errors
${THOME}/build/genpkg TRIBx11-info-clients xdpyinfo-1.4.0 xdriinfo-1.0.8 xlsatoms-1.1.5 xlsclients-1.1.6 xlsfonts-1.0.9 xvinfo-1.1.5 xwininfo-1.1.6
