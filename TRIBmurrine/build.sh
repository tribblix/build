#!/bin/sh
#
# add murrine theme engine
#
${THOME}/build/dobuild -64 -gnu murrine-0.98.2
${THOME}/build/genpkg TRIBmurrine murrine-0.98.2
