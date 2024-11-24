#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gnugo-3.8
${THOME}/build/genpkg TRIBgnugo gnugo-3.8
