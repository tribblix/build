#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gperf-3.1
${THOME}/build/genpkg TRIBgperf gperf-3.1
