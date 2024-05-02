#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# eom (needs itstool, newer intltool, mate-icon-theme, mate-desktop)
#
${THOME}/build/dobuild +gnu -64only eom-1.28.0
${THOME}/build/genpkg TRIBmate-eom eom-1.28.0
