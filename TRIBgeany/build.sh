#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu geany-1.38 -C --enable-gtk3 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.38
