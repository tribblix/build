#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only madplay-0.15.2b
${THOME}/build/genpkg TRIBmadplay madplay-0.15.2b
