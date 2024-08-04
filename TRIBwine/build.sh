#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# wine
#
${THOME}/build/dobuild +gnu wine-4.0.4
${THOME}/build/genpkg -gnu TRIBwine wine-4.0.4
