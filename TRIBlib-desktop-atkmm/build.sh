#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 2.38 introduces a new ABI
#
${THOME}/build/mesonbuild +64 -gnu atkmm-2.28.4
${THOME}/build/genpkg TRIBlib-desktop-atkmm atkmm-2.28.4
