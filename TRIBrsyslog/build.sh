#!/bin/sh
#
# new version needs libfastjson rather than json-c
#
${THOME}/build/dobuild rsyslog-8.1907.0 -C "--disable-generate-man-pages --sysconfdir=/etc --localstatedir=/var --enable-imsolaris"
${THOME}/build/genpkg TRIBrsyslog rsyslog-8.1907.0
