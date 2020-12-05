#!/bin/sh
#
# mustn't have pkgsrc installed, else it will pick up the wrong things
#
${THOME}/build/dobuild unbound-1.13.0 -C "--without-libevent --sysconfdir=/etc" -J 1
${THOME}/build/genpkg TRIBunbound unbound-1.13.0
