#!/bin/sh
#
# Pidgin wants gtk-spell which requires enchant
#
${THOME}/build/dobuild enchant-1.6.0
${THOME}/build/genpkg TRIBenchant enchant-1.6.0
