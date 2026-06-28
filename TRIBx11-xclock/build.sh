#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xclock-1.2.0
${THOME}/build/genpkg TRIBx11-xclock xclock-1.2.0
