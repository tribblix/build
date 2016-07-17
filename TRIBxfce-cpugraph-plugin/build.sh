#!/bin/sh
#
env LDFLAGS=-lkstat ${THOME}/build/dobuild -gnu xfce4-cpugraph-plugin-1.0.5
${THOME}/build/genpkg TRIBxfce-cpugraph-plugin xfce4-cpugraph-plugin-1.0.5
