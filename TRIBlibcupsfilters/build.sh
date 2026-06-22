#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-D_XPG6 $THOME/build/dobuild -64only libcupsfilters-2.1.1 -C --disable-dbus
${THOME}/build/genpkg TRIBlibcupsfilters libcupsfilters-2.1.1
