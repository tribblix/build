#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gsl-2.7.1
${THOME}/build/genpkg TRIBlibgsl gsl-2.7.1
