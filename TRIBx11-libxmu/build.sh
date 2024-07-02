#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-I/usr/include/X11/xcms ${THOME}/build/dobuild -64 libXmu-1.2.1
${THOME}/build/genpkg TRIBx11-libxmu libXmu-1.2.1
