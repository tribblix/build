#!/bin/sh
#
# wine
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu wine-4.0.3
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBwine wine-4.0.3
