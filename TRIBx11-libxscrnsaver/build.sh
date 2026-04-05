#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we should still supply a 32-bit library, as it turns out that libXext
# is a filter on it
#
${THOME}/build/dobuild -64 libXScrnSaver-1.2.5
${THOME}/build/genpkg TRIBx11-libxscrnsaver libXScrnSaver-1.2.5
