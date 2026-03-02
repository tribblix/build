#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CXXFLAGS="-lsocket" $THOME/build/mesonbuild -64only -gnu geeqie-2.4 -C -Dlua=disabled
${THOME}/build/genpkg TRIBgeeqie geeqie-2.4
