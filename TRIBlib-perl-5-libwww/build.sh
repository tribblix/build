#!/bin/sh
#
# libwww needs HTML-Parser
# libwww needs Net::HTTP
# libwww needs HTTP::Message
# libwww needs file-listing
# libwww needs http-cookies
# libwww needs www-robotrules
# libwww needs http-daemon
# libwww needs http-negotiate
#
${THOME}/build/unpack libwww-perl-6.15
cd libwww-perl-6.15
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-libwww
