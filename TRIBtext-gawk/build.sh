#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu gawk-4.1.3 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gawk gawk-4.1.3
