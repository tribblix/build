#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# cgi.pm needs URI and html-parser
#
${THOME}/build/unpack CGI-4.71
cd CGI-4.71
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-cgi CGI-4.71
