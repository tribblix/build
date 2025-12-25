#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs gperf
#
${THOME}/build/dobuild a2ps-4.14
${THOME}/build/genpkg TRIBa2ps a2ps-4.14
