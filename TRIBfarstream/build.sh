#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only farstream-0.2.9 -C "--disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfarstream farstream-0.2.9
