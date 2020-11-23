#!/bin/sh
#
${THOME}/build/dobuild +64only -gnu gawk-5.1.0 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gawk gawk-5.1.0
