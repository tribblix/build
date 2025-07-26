#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# ggrep
# NB. Must not have gnu iconv installed
#
${THOME}/build/dobuild -64only -gnu grep-3.12 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-grep grep-3.12
