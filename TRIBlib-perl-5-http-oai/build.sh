#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-OAI-4.13
cd HTTP-OAI-4.13
perl Build.PL
./Build
rm -fr /tmp/hoa
./Build install -destdir /tmp/hoa
${THOME}/build/create_pkg TRIBlib-perl-5-http-oai /tmp/hoa
cd ..
rm -fr /tmp/hoa
