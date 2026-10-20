#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf to put in the mapfile
#
${THOME}/build/dobuild -64 libXtst-1.2.6
${THOME}/build/genpkg TRIBx11-libxtst libXtst-1.2.6
