#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xclipboard-1.1.5
${THOME}/build/genpkg TRIBx11-xclipboard xclipboard-1.1.5
