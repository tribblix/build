#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libSM-1.2.6 -C "--enable-unix-transport --enable-tcp-transport --enable-ipv6 --without-libuuid"
${THOME}/build/genpkg TRIBx11-libsm libSM-1.2.6
