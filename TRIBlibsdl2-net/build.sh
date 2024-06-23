#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only SDL2_net-2.0.1
${THOME}/build/genpkg TRIBlibsdl2-net SDL2_net-2.0.1
