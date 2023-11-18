#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu sed-4.9 -P /usr/gnu
${THOME}/build/genpkg TRIBtext-gnu-sed sed-4.9
