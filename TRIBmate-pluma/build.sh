#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +gnu -64only pluma-1.28.0 -C "--disable-introspection LIBS=-lsocket"
${THOME}/build/genpkg TRIBmate-pluma pluma-1.28.0
