#!/bin/sh
#
# wine
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu wine-1.8.5
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBwine wine-1.8.5
