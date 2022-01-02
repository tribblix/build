#!/bin/sh
#
# pinentry
#
${THOME}/build/dobuild pinentry-1.2.0 -C LIBS=-lsocket
${THOME}/build/genpkg TRIBpinentry pinentry-1.2.0
