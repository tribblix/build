#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu thunar-vcs-plugin-0.2.0
${THOME}/build/genpkg TRIBthunar-vcs-plugin thunar-vcs-plugin-0.2.0
