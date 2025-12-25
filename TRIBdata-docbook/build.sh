#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you need to download the files
# and the fixit script does the rest of the work
#
$THOME/build/dobuild sgml-common-0.6.3 -C "--sysconfdir=/etc --with-docdir=/usr/share/nodoc"
${THOME}/build/genpkg TRIBdata-docbook sgml-common-0.6.3
