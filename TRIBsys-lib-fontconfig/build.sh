#!/bin/sh
#
${THOME}/build/dobuild -64 fontconfig-2.12.6 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBsys-lib-fontconfig fontconfig-2.12.6
#
# on sparc, this replaces SUNWfontconfig
#
