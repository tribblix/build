#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only opus-tools-0.2
${THOME}/build/genpkg TRIBopus-tools opus-tools-0.2
