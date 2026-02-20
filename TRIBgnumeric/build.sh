#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs a patch to ensure bool is defined
#
${THOME}/build/dobuild -64only +gnu gnumeric-1.12.60
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.60
