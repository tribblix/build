#!/bin/sh
#
env TRIBBLIX_LDFLAGS="-lsocket" $THOME/build/mesonbuild -64only -gnu geeqie-2.0.1
${THOME}/build/genpkg TRIBgeeqie geeqie-2.0.1
