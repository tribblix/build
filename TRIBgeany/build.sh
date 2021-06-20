#!/bin/sh
#
${THOME}/build/dobuild -gnu geany-1.37.1 -C --enable-gtk3 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.37.1
