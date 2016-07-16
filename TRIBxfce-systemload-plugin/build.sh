#!/bin/sh
#
env LDFLAGS=-lkstat ${THOME}/build/dobuild -gnu xfce4-systemload-plugin-1.1.2
${THOME}/build/genpkg TRIBxfce-systemload-plugin xfce4-systemload-plugin-1.1.2
