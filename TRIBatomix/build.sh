#!/bin/sh
#
env TRIBBLIX_CFLAGS=-fcommon TRIBBLIX_LDFLAGS=-fcommon $THOME/build/mesonbuild +gnu -64only atomix-3.34.0
${THOME}/build/genpkg TRIBatomix atomix-3.34.0
