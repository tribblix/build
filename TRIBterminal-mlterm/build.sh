#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -gnu -64only mlterm-3.9.2
${THOME}/build/genpkg TRIBterminal-mlterm mlterm-3.9.2
