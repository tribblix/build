#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu gnumeric-1.12.57
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.57
