#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu mate-panel-1.26.3 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.26.3
