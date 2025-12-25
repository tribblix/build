#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# gtar
#
${THOME}/build/dobuild -64only -gnu tar-1.35 -P /usr/gnu
${THOME}/build/genpkg TRIBarchiver-gnu-tar tar-1.35
