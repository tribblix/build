#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xedit-1.2.4
${THOME}/build/genpkg TRIBx11-xedit xedit-1.2.4
