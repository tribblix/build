#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only xclock-1.2.1
${THOME}/build/genpkg TRIBx11-xclock xclock-1.2.1
