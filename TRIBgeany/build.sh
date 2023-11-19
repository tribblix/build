#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu geany-2.0 -C --enable-gtk3 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-2.0
