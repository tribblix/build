#!/bin/sh
#
# new version needs libfastjson rather than json-c
#
${THOME}/build/dobuild rsyslog-8.17.0 -C --disable-generate-man-pages
${THOME}/build/genpkg TRIBrsyslog rsyslog-8.17.0
