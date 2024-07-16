#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# actually libmateweather
#
${THOME}/build/dobuild -64only -gnu libmateweather-1.28.0
${THOME}/build/genpkg TRIBmate-weather libmateweather-1.28.0
