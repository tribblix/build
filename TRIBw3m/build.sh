#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# use the gemini branch, which is gemini atop master
#
${THOME}/build/dobuild -64only -b gemini https://git.sr.ht/~rkta/w3m
${THOME}/build/genpkg TRIBw3m w3m
