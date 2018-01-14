#!/bin/sh
#
# gtar
#
${THOME}/build/dobuild -gnu tar-1.30 -P /usr/gnu
${THOME}/build/genpkg TRIBarchiver-gnu-tar tar-1.30
