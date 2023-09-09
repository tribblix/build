#!/bin/sh
#
env TRIBBLIX_CFLAGS=-fcommon TRIBBLIX_LDFLAGS=-fcommon $THOME/build/dobuild -64only chemtool-1.6.14
${THOME}/build/genpkg TRIBchemtool chemtool-1.6.14
