#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only twm-1.0.13.1
${THOME}/build/genpkg TRIBdesktop-wm-twm twm-1.0.13.1
