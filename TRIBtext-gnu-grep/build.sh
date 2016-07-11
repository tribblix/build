#!/bin/sh
#
# ggrep
# NB. Must not have gnu iconv installed
#
${THOME}/build/dobuild -64 -gnu grep-2.25 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-grep grep-2.25
