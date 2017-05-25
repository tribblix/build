#!/bin/sh
#
# bluefish (mustn't have gtk3 installed)
#
${THOME}/build/dobuild -gnu bluefish-2.2.10
${THOME}/build/genpkg TRIBbluefish bluefish-2.2.10
