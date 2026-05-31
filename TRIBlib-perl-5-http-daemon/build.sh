#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-Daemon-6.17
cd HTTP-Daemon-6.17
perl Build.PL
./Build
rm -fr /tmp/hoax
./Build install -destdir /tmp/hoax
${THOME}/build/create_pkg TRIBlib-perl-5-http-daemon /tmp/hoax
rm -fr /tmp/hoax
cd ..
