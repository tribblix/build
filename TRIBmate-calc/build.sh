#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu mate-calc-1.24.2
${THOME}/build/genpkg TRIBmate-calc mate-calc-1.24.2
