#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack colordiff-1.0.21
cd colordiff-1.0.21
gmake
sed -i 's:diff_cmd=diff:diff_cmd=gdiff:' colordiffrc*
rm -fr /tmp/cdi
mkdir -p /tmp/cdi
gmake install INSTALL=ginstall DESTDIR=/tmp/cdi INSTALL_DIR=/usr/bin MAN_DIR=/usr/share/man/man1
${THOME}/build/create_pkg TRIBtext-colordiff /tmp/cdi
rm -fr /tmp/cdi
cd ..
