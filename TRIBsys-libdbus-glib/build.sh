#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 -gnu dbus-glib-0.112
${THOME}/build/genpkg TRIBsys-libdbus-glib dbus-glib-0.112
