#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only check-0.15.2
${THOME}/build/genpkg TRIBdev-check check-0.15.2
