#!/bin/sh
#
${THOME}/build/dobuild -64 neon-0.32.2 -C "--with-ssl=openssl --enable-shared --disable-static"
${THOME}/build/genpkg TRIBneon neon-0.32.2
