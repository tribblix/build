#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu libwnck-2.31.0 -C --disable-introspection
${THOME}/build/genpkg TRIBlibwnck libwnck-2.31.0
