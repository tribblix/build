#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lkstat ${THOME}/build/dobuild -gnu xfce4-systemload-plugin-1.3.1
${THOME}/build/genpkg TRIBxfce-systemload-plugin xfce4-systemload-plugin-1.3.1
