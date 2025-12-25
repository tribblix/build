#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.7.0 is the latest compatible with EFL 1.20
#
${THOME}/build/mesonbuild -64only -gnu terminology-1.7.0
${THOME}/build/genpkg TRIBe19-terminology terminology-1.7.0
