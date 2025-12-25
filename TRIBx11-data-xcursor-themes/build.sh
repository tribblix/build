#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# requires xcursorgen as a build dependency
#
${THOME}/build/dobuild xcursor-themes-1.0.7
${THOME}/build/genpkg TRIBx11-data-xcursor-themes xcursor-themes-1.0.7
