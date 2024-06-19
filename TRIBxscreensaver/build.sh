#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu xscreensaver-6.09 -C "--with-gtk"
$THOME/build/genpkg -D install_prefix TRIBxscreensaver xscreensaver-6.09
