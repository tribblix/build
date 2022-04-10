#!/bin/sh
#
${THOME}/build/dobuild s-nail-14.9.24 -M "VAL_PREFIX=/usr VAL_SYSCONFDIR=/etc CC=gcc EXTRA_CFLAGS=-m64 EXTRA_LDFLAGS=-m64 all"
${THOME}/build/genpkg TRIBs-nail s-nail-14.9.24
