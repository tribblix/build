#!/bin/sh
#
# bluefish
#
${THOME}/build/dobuild -gnu -64only bluefish-2.2.13 -C --disable-python
${THOME}/build/genpkg TRIBbluefish bluefish-2.2.13
