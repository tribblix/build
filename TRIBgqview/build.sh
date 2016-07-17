#!/bin/sh
#
env LIBS="-lm -lsocket" ${THOME}/build/dobuild gqview-2.0.4
${THOME}/build/genpkg TRIBgqview gqview-2.0.4
