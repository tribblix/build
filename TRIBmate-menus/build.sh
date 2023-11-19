#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu mate-menus-1.26.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.26.1
