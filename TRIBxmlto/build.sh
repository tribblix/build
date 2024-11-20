#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs gnu-getopt
#
${THOME}/build/dobuild -A -64only xmlto-0.0.29 -C GETOPT=/usr/gnu/bin/getopt
${THOME}/build/genpkg TRIBxmlto xmlto-0.0.29
