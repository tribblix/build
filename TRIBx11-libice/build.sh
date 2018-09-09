#!/bin/sh
#
${THOME}/build/dobuild -64 libICE-1.0.9 -C "--enable-unix-transport --enable-tcp-transport --disable-local-transport --enable-ipv6"
${THOME}/build/genpkg TRIBx11-libice libICE-1.0.9
