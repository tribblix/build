#!/bin/sh
#
${THOME}/build/dobuild -64only gnucobol-3.1.2 -C --with-db=no
${THOME}/build/genpkg TRIBgnucobol gnucobol-3.1.2
