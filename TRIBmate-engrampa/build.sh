#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to fix standards-noncompliance
#
${THOME}/build/dobuild -64only +gnu engrampa-1.28.3
${THOME}/build/genpkg TRIBmate-engrampa engrampa-1.28.3
