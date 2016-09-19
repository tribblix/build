#!/bin/sh
#
${THOME}/build/unpack HTTP-Cookies-6.01
cd HTTP-Cookies-6.01
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-cookies
