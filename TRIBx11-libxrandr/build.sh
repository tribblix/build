#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXrandr-1.5.5
${THOME}/build/genpkg TRIBx11-libxrandr libXrandr-1.5.5
