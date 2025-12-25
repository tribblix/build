#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu gtkspell-2.0.16
${THOME}/build/genpkg TRIBgtkspell gtkspell-2.0.16
