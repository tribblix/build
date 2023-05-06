#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu mate-session-manager-1.26.1 -C --without-libglesv2
${THOME}/build/genpkg TRIBmate-session mate-session-manager-1.26.1
