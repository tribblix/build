#!/bin/sh
#
# some of these are downrev due to dependencies
#
${THOME}/build/dobuild xdpyinfo-1.2.0
${THOME}/build/dobuild xdriinfo-1.0.5
${THOME}/build/dobuild xlsatoms-1.1.2
${THOME}/build/dobuild xlsclients-1.1.4
${THOME}/build/dobuild xlsfonts-1.0.6
${THOME}/build/dobuild xvinfo-1.1.2
${THOME}/build/dobuild xwininfo-1.1.3
${THOME}/build/genpkg TRIBx11-info-clients xdpyinfo-1.2.0 xdriinfo-1.0.5 xlsatoms-1.1.2 xlsclients-1.1.4 xlsfonts-1.0.6 xvinfo-1.1.2 xwininfo-1.1.3
