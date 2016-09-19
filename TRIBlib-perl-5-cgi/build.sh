#!/bin/sh
#
# cgi.pm needs html-parser
#
${THOME}/build/unpack CGI-4.33
cd CGI-4.33
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-cgi
