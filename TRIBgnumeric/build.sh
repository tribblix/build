#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu gnumeric-1.12.52
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.52
