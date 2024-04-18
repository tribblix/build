#!/bin/sh
#
# wine
#
${THOME}/build/dobuild +gnu wine-4.0.3
${THOME}/build/genpkg -gnu TRIBwine wine-4.0.3
