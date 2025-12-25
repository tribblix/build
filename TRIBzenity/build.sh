#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild +gnu -64only zenity-3.42.1
${THOME}/build/genpkg TRIBzenity zenity-3.42.1
