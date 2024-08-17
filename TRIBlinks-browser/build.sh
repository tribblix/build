#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only links-2.30 -C "--enable-graphics --without-openmp"
${THOME}/build/genpkg TRIBlinks-browser links-2.30
