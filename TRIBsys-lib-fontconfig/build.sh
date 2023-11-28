#!/bin/sh
#
${THOME}/build/dobuild -64 fontconfig-2.14.2 -C "--sysconfdir=/etc --localstatedir=/var --disable-dependency-tracking"
${THOME}/build/genpkg TRIBsys-lib-fontconfig fontconfig-2.14.2
