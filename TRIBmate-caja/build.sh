#!/bin/sh
#
# needs mate-desktop installing for the build
#
${THOME}/build/dobuild -gnu caja-1.22.3 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.22.3
