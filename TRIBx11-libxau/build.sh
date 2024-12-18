#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXau-1.0.12 -C "--enable-xthreads --with-pic"
${THOME}/build/genpkg TRIBx11-libxau libXau-1.0.12
