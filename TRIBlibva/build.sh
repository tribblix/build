#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use autotools, meson mangles the installed RPATH
#
${THOME}/build/dobuild +64 libva-2.23.0
${THOME}/build/genpkg TRIBlibva libva-2.23.0
