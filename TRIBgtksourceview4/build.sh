#!/bin/sh
#
env TRIBBLIX_LDFLAGS=-lssp_ns AR=/usr/bin/ar ${THOME}/build/mesonbuild -64 -gnu gtksourceview-4.8.4 -C -Dgir=false
${THOME}/build/genpkg TRIBgtksourceview4 gtksourceview-4.8.4
