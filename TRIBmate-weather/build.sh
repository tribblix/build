#!/bin/sh
#
# actually libmateweather
#
${THOME}/build/dobuild -64only -gnu libmateweather-1.26.1
${THOME}/build/genpkg TRIBmate-weather libmateweather-1.26.1
