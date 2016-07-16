#!/bin/sh
#
# mate-menus-1.14.0
${THOME}/build/dobuild -gnu mate-menus-1.14.0 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.14.0
