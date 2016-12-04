#!/bin/sh
#
env CPPFLAGS="-DG_CONST_RETURN=" ${THOME}/build/dobuild -64 libunique-1.1.6 -C "--enable-bacon=no --enable-maintainer-flags=no"
${THOME}/build/genpkg TRIBlibunique libunique-1.1.6
