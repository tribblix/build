#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# libwww needs HTML-Parser
# libwww needs Net::HTTP
# libwww needs HTTP::CookieJar
# libwww needs HTTP::Message
# libwww needs file-listing
# libwww needs http-cookies
# libwww needs www-robotrules
# libwww needs http-daemon
# libwww needs http-negotiate
#
${THOME}/build/unpack libwww-perl-6.81
cd libwww-perl-6.81
perl Makefile.PL
make
cd ..
# add the https protocol handler
${THOME}/build/unpack LWP-Protocol-https-6.15
cd LWP-Protocol-https-6.15
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-libwww libwww-perl-6.81 LWP-Protocol-https-6.15
