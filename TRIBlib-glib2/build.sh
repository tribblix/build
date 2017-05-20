#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu glib-2.44.1 -C "--disable-dtrace" -M "-k"
${THOME}/build/genpkg TRIBlib-glib2 glib-2.44.1
