#!/bin/sh
#
# it wants to link everything statically, which will never work for us
#
env TRIBBLIX_CFLAGS=-I/usr/include/pcre ${THOME}/build/dobuild aide-0.16 -C --disable-static
${THOME}/build/genpkg TRIBaide aide-0.16
