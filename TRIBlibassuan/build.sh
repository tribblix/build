#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# libassuan
#
# still ship the old library for binary compatibility
#
${THOME}/build/dobuild +64 libassuan-2.5.7
${THOME}/build/dobuild +64 libassuan-3.0.2
${THOME}/build/genpkg TRIBlibassuan libassuan-2.5.7 libassuan-3.0.2
