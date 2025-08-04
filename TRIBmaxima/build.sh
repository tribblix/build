#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only maxima-5.48.0 -C --infodir=/usr/share/maxima/info
${THOME}/build/genpkg TRIBmaxima maxima-5.48.0
