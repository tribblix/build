#!/bin/sh
#
# mate-desktop-1.14.1
${THOME}/build/dobuild -gnu mate-desktop-1.14.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-desktop mate-desktop-1.14.1
