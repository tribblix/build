#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libiptcdata-1.0.4
${THOME}/build/genpkg TRIBlibiptcdata libiptcdata-1.0.4
