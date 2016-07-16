#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu dbus-glib-0.100
cd dbus-glib-0.100-64bit
gmake -k
cd ..
${THOME}/build/genpkg TRIBsys-libdbus-glib dbus-glib-0.100
