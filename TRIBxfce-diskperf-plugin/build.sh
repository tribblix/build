#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -64 -gnu xfce4-diskperf-plugin-2.6.3
${THOME}/build/genpkg TRIBxfce-diskperf-plugin xfce4-diskperf-plugin-2.6.3
