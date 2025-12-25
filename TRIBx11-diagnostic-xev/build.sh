#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xev-1.2.6
${THOME}/build/genpkg TRIBx11-diagnostic-xev xev-1.2.6
