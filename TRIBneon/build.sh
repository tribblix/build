#!/bin/sh
#
${THOME}/build/dobuild -64only neon-0.32.5 -C "--with-ssl=openssl --enable-shared --disable-static"
${THOME}/build/genpkg TRIBneon neon-0.32.5
