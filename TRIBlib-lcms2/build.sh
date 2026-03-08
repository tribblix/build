#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the dependencies are pulled in by the cli tools, not by the library
#
${THOME}/build/dobuild -64 lcms2-2.16
${THOME}/build/genpkg TRIBlib-lcms2 lcms2-2.16
