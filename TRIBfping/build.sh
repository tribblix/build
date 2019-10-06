#!/bin/sh
#
env CPPFLAGS="-D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild fping-4.2 -C --enable-ipv6
${THOME}/build/genpkg TRIBfping fping-4.2
