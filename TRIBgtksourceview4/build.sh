#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" TRIBBLIX_LDFLAGS=-lssp_ns AR=/usr/bin/ar ${THOME}/build/mesonbuild -64only -gnu gtksourceview-4.8.4
${THOME}/build/genpkg TRIBgtksourceview4 gtksourceview-4.8.4
