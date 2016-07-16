#!/bin/sh
#
${THOME}/build/dobuild -gnu patch-2.7.5 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-patch patch-2.7.5
