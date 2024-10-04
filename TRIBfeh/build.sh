#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs a patch to fix the makefile
#
${THOME}/build/dobuild feh-3.10.3
${THOME}/build/genpkg TRIBfeh feh-3.10.3
