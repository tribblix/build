#!/bin/sh
#
${THOME}/build/dobuild -64 librsvg-2.36.4 -C "--disable-Bsymbolic --disable-introspection"
${THOME}/build/genpkg TRIBimage-librsvg librsvg-2.36.4
