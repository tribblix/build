#!/bin/sh
#
${THOME}/build/dobuild -64 gdk-pixbuf-2.28.2 -C "--with-x11"
${THOME}/build/genpkg TRIBgdk-pixbuf gdk-pixbuf-2.28.2
