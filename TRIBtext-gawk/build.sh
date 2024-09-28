#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only -gnu gawk-5.3.1 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gawk gawk-5.3.1
