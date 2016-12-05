#!/bin/sh
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -gnu -64 dconf-0.24.0
env CPPFLAGS=-std=gnu99 ${THOME}/build/genpkg TRIBdconf dconf-0.24.0
