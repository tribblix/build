#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXtst-1.2.5
${THOME}/build/genpkg TRIBx11-libxtst libXtst-1.2.5
