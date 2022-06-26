#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu mate-menus-1.24.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.24.1
