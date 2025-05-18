#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only sessreg-1.1.4
${THOME}/build/genpkg TRIBx11-session-sessreg sessreg-1.1.4
