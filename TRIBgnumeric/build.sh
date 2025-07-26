#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu gnumeric-1.12.59
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.59
