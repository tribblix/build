#!/bin/sh
#
# explicitly tell it what vte and gtk to use
#
${THOME}/build/dobuild -gnu lxterminal-0.3.2 -C "--enable-gtk3 vte_CFLAGS=-I/usr/include/vte-2.91 vte_LIBS=-lvte-2.91 LIBS=-lsocket"
${THOME}/build/genpkg TRIBlxterminal lxterminal-0.3.2
