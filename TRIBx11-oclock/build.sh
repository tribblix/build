#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only oclock-1.0.6
${THOME}/build/genpkg TRIBx11-oclock oclock-1.0.6
