#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mustn't have pkgsrc installed, else it will pick up the wrong things
#
${THOME}/build/dobuild -64only unbound-1.24.0 -C "--without-libevent --sysconfdir=/etc" -J 1
${THOME}/build/genpkg TRIBunbound unbound-1.24.0
