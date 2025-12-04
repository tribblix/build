#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xkbcomp-1.5.0
${THOME}/build/genpkg TRIBx11-keyboard-xkbcomp xkbcomp-1.5.0
