#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXinerama-1.1.6
${THOME}/build/genpkg TRIBx11-libxinerama libXinerama-1.1.6
