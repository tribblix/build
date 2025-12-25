#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a postconf file to fix up the Makefile
#
${THOME}/build/dobuild -64only figlet-2.2.5
${THOME}/build/genpkg TRIBfiglet figlet-2.2.5
