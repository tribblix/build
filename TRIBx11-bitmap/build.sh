#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only bitmap-1.1.2
${THOME}/build/genpkg TRIBx11-bitmap bitmap-1.1.2
