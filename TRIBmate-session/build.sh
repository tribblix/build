#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu mate-session-manager-1.24.3 -C --without-libglesv2
${THOME}/build/genpkg TRIBmate-session mate-session-manager-1.24.3
