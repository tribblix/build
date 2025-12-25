#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXcomposite-0.4.6
${THOME}/build/genpkg TRIBx11-libxcomposite libXcomposite-0.4.6
