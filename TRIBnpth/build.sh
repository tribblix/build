#!/bin/sh
#
env TRIBBLIX_CFLAGS="-std=c99" ${THOME}/build/dobuild -64 npth-1.6
${THOME}/build/genpkg TRIBnpth npth-1.6
