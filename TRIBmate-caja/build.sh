#!/bin/sh
#
# needs mate-desktop installing for the build
#
${THOME}/build/dobuild -64 -gnu caja-1.24.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.24.1
