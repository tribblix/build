#!/bin/sh
#
env CPPFLAGS="-std=c99 -D_XOPEN_SOURCE=600 -D__EXTENSIONS__" ${THOME}/build/dobuild ggobi-2.1.11
${THOME}/build/genpkg TRIBggobi ggobi-2.1.11
