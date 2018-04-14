#!/bin/sh
#
${THOME}/build/dobuild -gnu geany-1.33 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.33
