#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64 SDL_net-1.2.8
${THOME}/build/genpkg TRIBlibsdl-net SDL_net-1.2.8
