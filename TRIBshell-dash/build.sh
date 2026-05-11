#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -A -64only dash-0.5.13.4 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBshell-dash dash-0.5.13.4
