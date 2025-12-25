#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only dash-0.5.12
${THOME}/build/genpkg TRIBshell-dash dash-0.5.12
