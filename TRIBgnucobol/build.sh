#!/bin/sh
#
${THOME}/build/dobuild gnucobol-2.2 -C --with-db=no
${THOME}/build/genpkg TRIBgnucobol gnucobol-2.2
