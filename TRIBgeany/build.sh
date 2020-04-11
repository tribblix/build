#!/bin/sh
#
${THOME}/build/dobuild -gnu geany-1.36 -C --enable-gtk3 -M 'geany_LDFLAGS='
${THOME}/build/genpkg TRIBgeany geany-1.36
