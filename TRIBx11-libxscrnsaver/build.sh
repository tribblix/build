#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libXScrnSaver-1.2.5
${THOME}/build/genpkg TRIBx11-libxscrnsaver libXScrnSaver-1.2.5
