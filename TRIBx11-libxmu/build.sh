#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-I/usr/include/X11/xcms ${THOME}/build/dobuild -A -64 libXmu-1.3.1
${THOME}/build/genpkg TRIBx11-libxmu libXmu-1.3.1
