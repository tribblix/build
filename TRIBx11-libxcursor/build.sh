#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXcursor-1.2.3
${THOME}/build/genpkg TRIBx11-libxcursor libXcursor-1.2.3
