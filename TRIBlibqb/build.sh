#!/bin/sh
#
# to run the test suite, you need to
# 1. build to a writable prefix, eg -P /tmp/local
# 2. mkdir -p /tmp/local/var/run
# as the test suite needs to write into $prefix/var/run
#
${THOME}/build/dobuild -64 libqb-1.0 -C "--localstatedir=/var --sysconfdir=/etc"
${THOME}/build/genpkg TRIBlibqb libqb-1.0
