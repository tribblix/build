#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only mpc-0.35
${THOME}/build/genpkg TRIBmpc mpc-0.35
