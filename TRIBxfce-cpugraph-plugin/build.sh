#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -gnu xfce4-cpugraph-plugin-1.2.3
${THOME}/build/genpkg TRIBxfce-cpugraph-plugin xfce4-cpugraph-plugin-1.2.3
