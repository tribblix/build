#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# add murrine theme engine
#
${THOME}/build/dobuild -64 -gnu murrine-0.98.2
${THOME}/build/genpkg TRIBmurrine murrine-0.98.2
