#!/bin/sh
#
# ggrep
# NB. Must not have gnu iconv installed
#
${THOME}/build/dobuild -64only -gnu grep-3.11 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-grep grep-3.11
