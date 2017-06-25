#!/bin/sh
#
env CC=gcc LDFLAGS="-lsocket -lnsl -lresolv" ${THOME}/build/dobuild httping-2.5
${THOME}/build/genpkg TRIBhttping httping-2.5
