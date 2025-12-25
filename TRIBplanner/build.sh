#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env AR=/usr/bin/ar $THOME/build/mesonbuild -64only -gnu planner-0.14.92 -C -Dexamples=true
${THOME}/build/genpkg TRIBplanner planner-0.14.92
