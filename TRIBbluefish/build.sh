#!/bin/sh
#
# bluefish (mustn't have gtk3 installed)
#
${THOME}/build/dobuild -gnu bluefish-2.2.9
${THOME}/build/genpkg TRIBbluefish bluefish-2.2.9
