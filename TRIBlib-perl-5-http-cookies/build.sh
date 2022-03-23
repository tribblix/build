#!/bin/sh
#
${THOME}/build/unpack HTTP-Cookies-6.10
cd HTTP-Cookies-6.10
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-cookies
cd ..
