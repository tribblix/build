#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack HTTP-Daemon-6.16
cd HTTP-Daemon-6.16
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-http-daemon HTTP-Daemon-6.16
