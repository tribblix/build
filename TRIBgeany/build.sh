#!/bin/sh
#
${THOME}/build/dobuild -gnu geany-1.30 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.30
