#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xwd-1.0.9
${THOME}/build/dobuild -64only xwud-1.0.7
${THOME}/build/dobuild -64only xpr-1.2.0
${THOME}/build/genpkg TRIBx11-xwd xwd-1.0.9 xwud-1.0.7 xpr-1.2.0
