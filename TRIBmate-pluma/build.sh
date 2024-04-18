#!/bin/sh
#
${THOME}/build/dobuild +gnu -64only pluma-1.26.1 -C "--disable-introspection LIBS=-lsocket"
${THOME}/build/genpkg TRIBmate-pluma pluma-1.26.1
