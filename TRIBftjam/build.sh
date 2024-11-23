#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" ${THOME}/build/dobuild ftjam-2.5.2
${THOME}/build/genpkg TRIBftjam ftjam-2.5.2
