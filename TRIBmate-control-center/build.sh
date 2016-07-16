#!/bin/sh
#
# mate-control-center-1.14.0 needs mate-menus marco
${THOME}/build/dobuild -gnu mate-control-center-1.14.0 -M -k
${THOME}/build/genpkg TRIBmate-control-center mate-control-center-1.14.0
