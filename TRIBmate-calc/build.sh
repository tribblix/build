#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu mate-calc-1.24.2
${THOME}/build/genpkg TRIBmate-calc mate-calc-1.24.2
