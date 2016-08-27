#!/bin/sh
#
# caja
${THOME}/build/dobuild -gnu caja-1.14.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.14.2
