#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu mate-menus-1.28.1
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.28.1
