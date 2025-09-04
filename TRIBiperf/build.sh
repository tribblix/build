#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only iperf-3.19.1 -C --enable-static=no
${THOME}/build/genpkg TRIBiperf iperf-3.19.1
