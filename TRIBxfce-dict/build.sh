#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu xfce4-dict-0.8.6 -C LIBS=-lsocket
${THOME}/build/genpkg TRIBxfce-dict xfce4-dict-0.8.6
