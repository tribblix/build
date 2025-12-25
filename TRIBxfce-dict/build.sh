#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xfce4-dict-0.8.6 -C LIBS=-lsocket
${THOME}/build/genpkg TRIBxfce-dict xfce4-dict-0.8.6
