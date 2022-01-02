#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu gnumeric-1.12.50
${THOME}/build/genpkg TRIBgnumeric gnumeric-1.12.50
