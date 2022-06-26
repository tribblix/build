#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu pluma-1.24.2 -C "--disable-introspection LIBS=-lsocket"
${THOME}/build/genpkg TRIBmate-pluma pluma-1.24.2
