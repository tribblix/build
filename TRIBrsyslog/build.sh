#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild rsyslog-8.2610.0 -64only -C "--disable-generate-man-pages --sysconfdir=/etc --localstatedir=/var --enable-imsolaris"
${THOME}/build/genpkg TRIBrsyslog rsyslog-8.2610.0
