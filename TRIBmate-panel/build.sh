#!/bin/sh
#
# mate-panel-1.14.0
${THOME}/build/dobuild -gnu mate-panel-1.14.0 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.14.0
