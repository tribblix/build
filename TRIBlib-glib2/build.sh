#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu glib-2.56.4 -C "--disable-dtrace"
${THOME}/build/genpkg TRIBlib-glib2 glib-2.56.4
