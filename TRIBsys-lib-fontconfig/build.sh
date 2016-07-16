#!/bin/sh
#
${THOME}/build/dobuild -64 fontconfig-2.11.1 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBsys-lib-fontconfig fontconfig-2.11.1
#
# on sparce, this replaces SUNWfontconfig
#
