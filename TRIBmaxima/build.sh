#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# rebuild this package if sbcl is updated
#
${THOME}/build/dobuild +64only maxima-5.48.1 -C --infodir=/usr/share/maxima/info
${THOME}/build/genpkg TRIBmaxima maxima-5.48.1
