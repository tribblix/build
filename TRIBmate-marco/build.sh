#!/bin/sh
#
# marco-1.14.2
${THOME}/build/dobuild -gnu marco-1.14.2 -C "CPPFLAGS=-D__EXTENSIONS__ CFLAGS=-std=gnu99"
${THOME}/build/genpkg TRIBmate-marco marco-1.14.2
