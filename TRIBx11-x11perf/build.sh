#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only x11perf-1.7.0
${THOME}/build/genpkg TRIBx11-x11perf x11perf-1.7.0
