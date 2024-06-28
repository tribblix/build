#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# cgi.pm needs URI and html-parser
#
${THOME}/build/unpack CGI-4.66
cd CGI-4.66
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-cgi
