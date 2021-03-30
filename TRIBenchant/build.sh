#!/bin/sh
#
# Pidgin wants gtk-spell which requires enchant
#
${THOME}/build/dobuild -64 enchant-1.6.0 -C "--disable-aspell"
${THOME}/build/genpkg TRIBenchant enchant-1.6.0
