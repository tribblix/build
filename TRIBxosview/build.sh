#!/bin/sh
#
${THOME}/build/dobuild xosview-1.23 -M "PLATFORM=sunos5 PREFIX=/usr CXXFLAGS=-m64 LDFLAGS=-m64"
${THOME}/build/genpkg -M "PLATFORM=sunos5 PREFIX=/usr" TRIBxosview xosview-1.23
