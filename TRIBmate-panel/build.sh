#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64 -gnu mate-panel-1.24.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.24.2
