#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild parallel-20250822 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-parallel parallel-20250822
