#!/bin/sh
#
# units_cur is a python script
#
${THOME}/build/dobuild -64only units-2.23 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-units units-2.23
