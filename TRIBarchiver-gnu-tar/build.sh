#!/bin/sh
#
# gtar
#
${THOME}/build/dobuild -64only -gnu tar-1.32 -P /usr/gnu
${THOME}/build/genpkg TRIBarchiver-gnu-tar tar-1.32
