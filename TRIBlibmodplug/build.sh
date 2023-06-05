#!/bin/sh
#
env TRIBBLIX_CFLAGS=-O $THOME/build/dobuild -64 https://github.com/christopho/libmodplug
${THOME}/build/genpkg TRIBlibmodplug libmodplug
