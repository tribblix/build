#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu geany-plugins-2.0 -C "--disable-scope --disable-utilslib"
${THOME}/build/genpkg TRIBgeany-plugins geany-plugins-2.0
