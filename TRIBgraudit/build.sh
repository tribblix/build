#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/wireghoul/graudit/
cd graudit
sed -i s:grep:ggrep: graudit
sed -i s:grep:ggrep: t/t-signaturebugs.sh
sed -i s:grep:ggrep: t/t-000.sh
sed -i s:grep:ggrep: t/git-test.sh
sed -i s:grep:ggrep:g misc/*.sh
sed -i s:nroff:mandoc: Makefile
sed -i '/git-test/d' Makefile
sed -i '/configure/d' Makefile
gmake

rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/share/man/man1
gmake install prefix=/tmp/gg/usr
mv /tmp/gg/usr/share/graudit/graudit.1 /tmp/gg/usr/share/man/man1
${THOME}/build/create_pkg TRIBgraudit /tmp/gg
rm -fr /tmp/gg
cd ..
