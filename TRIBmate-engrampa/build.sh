#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu engrampa-1.26.2
${THOME}/build/genpkg TRIBmate-engrampa engrampa-1.26.2
