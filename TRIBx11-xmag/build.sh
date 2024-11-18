#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xmag-1.0.8
${THOME}/build/genpkg TRIBx11-xmag xmag-1.0.8
