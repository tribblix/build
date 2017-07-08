#!/bin/sh
#
# on sparc at least, incompatible with ncurses being installed
${THOME}/build/dobuild nano-2.8.5
${THOME}/build/genpkg TRIBeditor-nano nano-2.8.5
