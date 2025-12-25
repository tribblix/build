#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu automake-1.15
${THOME}/build/dobuild -gnu automake-1.16.5
${THOME}/build/genpkg TRIBautomake automake-1.15 automake-1.16.5
