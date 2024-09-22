#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libXres-1.2.2
${THOME}/build/genpkg TRIBx11-libxres libXres-1.2.2
