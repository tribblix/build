#!/bin/sh
#
# bluefish
#
${THOME}/build/dobuild -gnu bluefish-2.2.12 -C --disable-python
${THOME}/build/genpkg TRIBbluefish bluefish-2.2.12
