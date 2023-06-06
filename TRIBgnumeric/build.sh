#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only -gnu gnumeric-1.12.55
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.55
