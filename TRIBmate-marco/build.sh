#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only -gnu marco-1.28.2
${THOME}/build/genpkg TRIBmate-marco marco-1.28.2
