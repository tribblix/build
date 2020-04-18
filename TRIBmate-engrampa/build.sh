#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu engrampa-1.22.3
${THOME}/build/genpkg TRIBmate-engrampa engrampa-1.22.3
