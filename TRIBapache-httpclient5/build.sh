#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/hc5
mkdir -p /tmp/hc5
cd /tmp/hc5
$THOME/build/unpack httpcomponents-client-5.4.2-bin
# just shuffle the files we need to the right place
mkdir -p usr/share/httpcomponents-client-5
mv lib/httpcore5-5.3.3.jar usr/share/httpcomponents-client-5
mv lib/httpcore5-h2-5.3.3.jar usr/share/httpcomponents-client-5
mv lib/httpclient5-5.4.2.jar usr/share/httpcomponents-client-5
rm -fr javadoc lib
mv *.txt usr/share/httpcomponents-client-5
cd
$THOME/build/create_pkg TRIBapache-httpclient5 /tmp/hc5
