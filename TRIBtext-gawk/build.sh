#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu gawk-4.2.1 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gawk gawk-4.2.1
