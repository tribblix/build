#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libao-1.2.0
${THOME}/build/genpkg TRIBlibao libao-1.2.0
