#!/bin/sh
#
# actually libmateweather
#
${THOME}/build/dobuild -64 -gnu libmateweather-1.26.0
${THOME}/build/genpkg TRIBmate-weather libmateweather-1.26.0
