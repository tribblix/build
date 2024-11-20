#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the build interprets prefix rather oddly; explicitly uses "make" in
# subdirs which can't handle -j; manpage install ignores DESTDIR.
#
${THOME}/build/dobuild -64only xgalaga-2.1.1.0 -P /usr/share/xgalaga
cd xgalaga-2.1.1.0-64bit
gmake
rm -fr /tmp/g
gmake install DESTDIR=/tmp/g
mv /tmp/g/usr/local/bin /tmp/g/usr
rmdir /tmp/g/usr/local
mkdir -p /tmp/g/usr/share/man/man6
cp xgalaga.6x.gz /tmp/g/usr/share/man/man6
gunzip /tmp/g/usr/share/man/man6/xgalaga.6x.gz
mv /tmp/g/usr/share/man/man6/xgalaga.6x /tmp/g/usr/share/man/man6/xgalaga.6
${THOME}/build/create_pkg TRIBxgalaga /tmp/g
rm -fr /tmp/g
