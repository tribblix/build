#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only screen-4.9.1 -C --with-sys-screenrc=/etc/screenrc
${THOME}/build/genpkg TRIBscreen screen-4.9.1
