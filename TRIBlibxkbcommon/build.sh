#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libxkbcommon-0.8.2
${THOME}/build/genpkg TRIBlibxkbcommon libxkbcommon-0.8.2
