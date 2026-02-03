#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# new version needs libfastjson rather than json-c
#
${THOME}/build/dobuild rsyslog-8.2512.0 -64only -C "--disable-generate-man-pages --sysconfdir=/etc --localstatedir=/var --enable-imsolaris"
${THOME}/build/genpkg TRIBrsyslog rsyslog-8.2512.0
