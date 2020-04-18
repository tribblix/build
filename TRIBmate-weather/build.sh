#!/bin/sh
#
# actually libmateweather
#
${THOME}/build/dobuild -gnu libmateweather-1.22.1
${THOME}/build/genpkg TRIBmate-weather libmateweather-1.22.1
