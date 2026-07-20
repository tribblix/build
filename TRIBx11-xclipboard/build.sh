#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only xclipboard-1.1.6
${THOME}/build/genpkg TRIBx11-xclipboard xclipboard-1.1.6
