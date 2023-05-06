#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu mate-menus-1.26.0 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-menus mate-menus-1.26.0
