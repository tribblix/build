#!/bin/sh
#
${THOME}/build/dobuild -64only bc-1.07.1 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-bc bc-1.07.1
