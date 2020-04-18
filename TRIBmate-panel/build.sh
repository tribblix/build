#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu mate-panel-1.22.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.22.2
