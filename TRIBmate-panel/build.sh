#!/bin/sh
#
${THOME}/build/dobuild -64only +gnu mate-panel-1.26.4 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.26.4
