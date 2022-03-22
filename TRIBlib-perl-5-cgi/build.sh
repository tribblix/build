#!/bin/sh
#
# cgi.pm needs html-parser
#
${THOME}/build/unpack CGI-4.54
cd CGI-4.54
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-cgi
