#!/bin/sh
#
${THOME}/build/dobuild -gnu mate-menus-1.22.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.22.1
