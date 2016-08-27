#!/bin/sh
#
# mate-panel
${THOME}/build/dobuild -gnu mate-panel-1.14.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.14.2
