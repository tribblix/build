#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu gtksourceview-3.24.11 -C --disable-introspection
${THOME}/build/genpkg TRIBgtksourceview3 gtksourceview-3.24.11
