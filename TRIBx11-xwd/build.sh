#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only xwd-1.0.10
${THOME}/build/mesonbuild -64only xwud-1.0.8
${THOME}/build/dobuild -64only xpr-1.2.0
${THOME}/build/genpkg TRIBx11-xwd xwd-1.0.10 xwud-1.0.8 xpr-1.2.0
