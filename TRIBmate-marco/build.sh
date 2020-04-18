#!/bin/sh
#
#
${THOME}/build/dobuild -gnu marco-1.22.4 -C "CPPFLAGS=-D__EXTENSIONS__ CFLAGS=-std=gnu99"
${THOME}/build/genpkg TRIBmate-marco marco-1.22.4
