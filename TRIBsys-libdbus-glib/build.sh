#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu dbus-glib-0.110
${THOME}/build/genpkg TRIBsys-libdbus-glib dbus-glib-0.110
