#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mustn't have /usr/gnu/bin in the PATH
# if you do, it will pick "m4" rather than "gm4"
# which will cause trouble later
#
${THOME}/build/dobuild -64 flex-2.6.4
${THOME}/build/genpkg TRIBflex flex-2.6.4
