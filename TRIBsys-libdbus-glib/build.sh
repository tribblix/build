#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu dbus-glib-0.108
${THOME}/build/genpkg TRIBsys-libdbus-glib dbus-glib-0.108
