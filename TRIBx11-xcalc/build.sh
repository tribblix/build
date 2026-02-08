#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xcalc-1.1.3
${THOME}/build/genpkg TRIBx11-xcalc xcalc-1.1.3
