#!/bin/sh
#
${THOME}/build/dobuild -64 libXext-1.3.4 -C CPPFLAGS=-DSUNSOFT
${THOME}/build/genpkg TRIBx11-libxext libXext-1.3.4
