#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# building tests requires boost, and fails on sparc, so force
# in order to get consistent behaviour
#
${THOME}/build/mesonbuild +64 -gnu cairomm-1.14.5 -C -Dbuild-tests=false
${THOME}/build/genpkg TRIBlib-desktop-cairomm cairomm-1.14.5
