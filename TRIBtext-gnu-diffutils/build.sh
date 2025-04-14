#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only -gnu diffutils-3.12 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-diffutils diffutils-3.12
