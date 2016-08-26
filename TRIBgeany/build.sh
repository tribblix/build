#!/bin/sh
#
${THOME}/build/dobuild -gnu geany-1.28 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.28
