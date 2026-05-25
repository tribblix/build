#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXi-1.8.3
${THOME}/build/genpkg TRIBx11-libxi libXi-1.8.3
