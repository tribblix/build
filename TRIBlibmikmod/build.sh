#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use autotools rather than cmake as it handles the dual 32/64 install
# properly
#
${THOME}/build/dobuild -64only libmikmod-3.3.11.1
${THOME}/build/genpkg TRIBlibmikmod libmikmod-3.3.11.1
