#!/bin/sh
#
env CPPFLAGS=-std=gnu99 ${THOME}/build/dobuild -gnu dconf-0.24.0
env CPPFLAGS=-std=gnu99 ${THOME}/build/genpkg TRIBdconf dconf-0.24.0
