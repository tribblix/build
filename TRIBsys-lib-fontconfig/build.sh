#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 fontconfig-2.15.0 -C "--sysconfdir=/etc --localstatedir=/var --disable-dependency-tracking"
${THOME}/build/genpkg TRIBsys-lib-fontconfig fontconfig-2.15.0
