#!/bin/sh
#
env LIBS="-lbsm -lnsl -lsocket -lgen -lscf -lresolv" ${THOME}/build/dobuild -64 trousers-0.3.15
${THOME}/build/genpkg TRIBlib-security-trousers trousers-0.3.15
