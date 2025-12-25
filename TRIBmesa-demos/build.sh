#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# alternate prefix to avoid dumping a lot of potentially conflicting
# commands into /usr/bin
#
env TRIBBLIX_LDFLAGS="-L/usr/lib/mesa/`$THOME/build/getarch` -R/usr/lib/mesa/`$THOME/build/getarch`" $THOME/build/dobuild -64only mesa-demos-8.5.0 -P /usr/versions/mesa-demos -C "--enable-gles1=no --enable-autotools --with-system-data-files"
${THOME}/build/genpkg TRIBmesa-demos mesa-demos-8.5.0
