#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/mesonbuild +gnu -64only tali-3.38.3
${THOME}/build/genpkg TRIBtali tali-3.38.3
