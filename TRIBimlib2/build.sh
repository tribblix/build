#!/bin/sh
#
# it tries to build 32-bit assembler on 64-bit, so need to be specific
#
${THOME}/build/dobuild -64 imlib2-1.12.1 -C --enable-mmx +C --enable-amd64
${THOME}/build/genpkg TRIBimlib2 imlib2-1.12.1
