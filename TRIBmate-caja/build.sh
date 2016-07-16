#!/bin/sh
#
# caja-1.14.1
${THOME}/build/dobuild -gnu caja-1.14.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.14.1
