#!/bin/sh
#
${THOME}/build/dobuild -64 libiconv-1.16 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-libiconv libiconv-1.16
