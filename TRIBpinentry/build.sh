#!/bin/sh
#
# pinentry
#
${THOME}/build/dobuild -64only pinentry-1.2.1 -C "--disable-libsecret --disable-pinentry-efl LIBS=-lsocket"
${THOME}/build/genpkg TRIBpinentry pinentry-1.2.1
