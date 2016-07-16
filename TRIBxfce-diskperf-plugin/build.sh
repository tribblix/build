#!/bin/sh
#
env LDFLAGS=-lkstat ${THOME}/build/dobuild -gnu xfce4-diskperf-plugin-2.5.5
${THOME}/build/genpkg TRIBxfce-diskperf-plugin xfce4-diskperf-plugin-2.5.5
