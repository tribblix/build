#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 lcms2-2.16
${THOME}/build/genpkg TRIBlib-lcms2 lcms2-2.16
