#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that 2.48 changes ABI and changes dependencies
#
${THOME}/build/mesonbuild +64 -gnu pangomm-2.46.4
${THOME}/build/genpkg TRIBlib-desktop-pangomm pangomm-2.46.4
