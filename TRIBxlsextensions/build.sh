#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/imakebuild -64only xlsextensions-1.1
${THOME}/build/genpkg TRIBxlsextensions xlsextensions-1.1
