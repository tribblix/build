#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXi-1.7.10
${THOME}/build/genpkg TRIBx11-libxi libXi-1.7.10
