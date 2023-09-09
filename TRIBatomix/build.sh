#!/bin/sh
#
env TRIBBLIX_CFLAGS=-fcommon TRIBBLIX_LDFLAGS=-fcommon PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only atomix-3.34.0
${THOME}/build/genpkg TRIBatomix atomix-3.34.0
