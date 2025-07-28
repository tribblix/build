#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only ico-1.0.6
${THOME}/build/dobuild -64only xeyes-1.3.1
${THOME}/build/dobuild -64only xgc-1.0.7
${THOME}/build/dobuild -64only xlogo-1.0.7
${THOME}/build/genpkg TRIBx11-demo ico-1.0.6 xeyes-1.3.1 xgc-1.0.7 xlogo-1.0.7
