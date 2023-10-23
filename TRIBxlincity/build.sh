#!/bin/sh
#
# 64-bit seems to mess up the timers and it goes into a turbo state
#
env TRIBBLIX_CFLAGS=-fcommon ${THOME}/build/dobuild lincity-1.12.1
${THOME}/build/genpkg TRIBxlincity lincity-1.12.1
