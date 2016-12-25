#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64 SDL2_net-2.0.1
${THOME}/build/genpkg TRIBlibsdl2-net SDL2_net-2.0.1
