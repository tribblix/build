#!/bin/sh
#
# wine
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu wine-3.0
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBwine wine-3.0
