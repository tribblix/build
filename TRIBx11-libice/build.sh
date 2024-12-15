#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libICE-1.1.2 -C "--enable-unix-transport --enable-tcp-transport --disable-local-transport --enable-ipv6"
${THOME}/build/genpkg TRIBx11-libice libICE-1.1.2
