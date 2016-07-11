#!/bin/sh
#
# try parking in /usr/gnu to partially hide it
#
${THOME}/build/dobuild -64 readline-6.3 -P /usr/gnu
${THOME}/build/genpkg TRIBreadline readline-6.3
