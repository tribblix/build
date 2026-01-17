#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu +64only patch-2.8 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-patch patch-2.8
