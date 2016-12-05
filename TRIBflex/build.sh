#!/bin/sh
#
# need to work harder to force gnu m4, -gnu isn't enough
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64 flex-2.6.2
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBflex flex-2.6.2
