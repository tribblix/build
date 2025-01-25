#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs to be built with the tcl/tk source, not the installed versions
#
${THOME}/build/unpack tcl8.6.15-src
${THOME}/build/unpack tk8.6.15-src

${THOME}/build/dobuild expect5.45.4
${THOME}/build/genpkg TRIBexpect expect5.45.4
