#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu mate-calc-1.22.2
${THOME}/build/genpkg TRIBmate-calc mate-calc-1.22.2
