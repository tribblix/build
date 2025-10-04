#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXt-1.3.1
${THOME}/build/genpkg TRIBx11-lib-toolkit-libxt libXt-1.3.1
