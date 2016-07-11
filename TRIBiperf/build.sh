#!/bin/sh
#
#
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild iperf-3.1.3 -C CFLAGS="-std=gnu99"
${THOME}/build/genpkg TRIBiperf iperf-3.1.3
