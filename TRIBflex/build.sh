#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64 flex-2.6.4
${THOME}/build/genpkg TRIBflex flex-2.6.4
