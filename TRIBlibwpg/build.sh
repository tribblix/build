#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libwpg-0.3.4
${THOME}/build/genpkg TRIBlibwpg libwpg-0.3.4
