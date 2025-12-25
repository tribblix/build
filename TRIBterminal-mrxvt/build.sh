#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only mrxvt-0.5.4
${THOME}/build/genpkg TRIBterminal-mrxvt mrxvt-0.5.4
