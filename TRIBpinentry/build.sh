#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pinentry
#
# for dependency purposes, split the gui implementations
# into separate packages
#
${THOME}/build/dobuild -64only pinentry-1.3.2 -C "--disable-libsecret --disable-pinentry-efl LIBS=-lsocket"
${THOME}/build/genpkg TRIBpinentry pinentry-1.3.2
