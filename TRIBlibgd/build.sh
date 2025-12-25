#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libgd-2.3.3
${THOME}/build/genpkg TRIBlibgd libgd-2.3.3
