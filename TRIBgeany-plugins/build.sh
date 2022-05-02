#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu geany-plugins-1.38 -C "--disable-scope --disable-utilslib"
${THOME}/build/genpkg TRIBgeany-plugins geany-plugins-1.38
