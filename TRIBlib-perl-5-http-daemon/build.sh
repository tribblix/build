#!/bin/sh
#
${THOME}/build/unpack HTTP-Daemon-6.14
cd HTTP-Daemon-6.14
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-daemon
cd ..
