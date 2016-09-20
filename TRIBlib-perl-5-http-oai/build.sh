#!/bin/sh
#
${THOME}/build/unpack HTTP-OAI-4.03
cd HTTP-OAI-4.03
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-http-oai
