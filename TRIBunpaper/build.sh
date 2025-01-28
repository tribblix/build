#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only unpaper-7.0.0
${THOME}/build/genpkg TRIBunpaper unpaper-7.0.0
