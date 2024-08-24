#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu engrampa-1.28.2
${THOME}/build/genpkg TRIBmate-engrampa engrampa-1.28.2
