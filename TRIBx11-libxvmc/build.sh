#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only libXvMC-1.0.15
${THOME}/build/genpkg TRIBx11-libxvmc libXvMC-1.0.15
