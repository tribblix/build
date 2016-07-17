#!/bin/sh
#
# NOTE: this module was last built against perl5.10.0
#
${THOME}/build/unpack HTTP-Daemon-6.01
cd HTTP-Daemon-6.01
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-daemon
