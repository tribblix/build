#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# explicitly tell it what vte and gtk to use
#
# there aren't any published releases on github, so use the latest
# checkout which has ~3years of fixes since the last tag
# it still reports itself as 0.4.0
#
${THOME}/build/dobuild -64only -gnu https://github.com/lxde/lxterminal -C "--enable-gtk3 vte_CFLAGS=-I/usr/include/vte-2.91 vte_LIBS=-lvte-2.91 LIBS=-lsocket"
${THOME}/build/genpkg TRIBlxterminal lxterminal
