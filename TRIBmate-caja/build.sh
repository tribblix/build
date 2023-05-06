#!/bin/sh
#
# needs mate-desktop installing for the build
#
${THOME}/build/dobuild -64only -gnu caja-1.26.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.26.1
