#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu marco-1.28.1
${THOME}/build/genpkg TRIBmate-marco marco-1.28.1
