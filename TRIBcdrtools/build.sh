#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack cdrtools-3.01
cd cdrtools-3.01
env INS_BASE=/usr make -e CCOM=gcc64
rm -fr /tmp/cdr
env INS_BASE=/tmp/cdr/usr INS_RBASE=/tmp/cdr make -e install CCOM=gcc64

#
# tidy up
#
rm -fr /tmp/cdr/etc /tmp/cdr/usr/sbin /tmp/cdr/usr/include
rm -fr /tmp/cdr/usr/share/doc /tmp/cdr/usr/share/man/man4
rm -fr /tmp/cdr/usr/lib
rm -f /tmp/cdr/usr/share/man/man1/rscsi.1
rm -f /tmp/cdr/usr/bin/scg* /tmp/cdr/usr/share/man/man1/scg*
rm -f /tmp/cdr/usr/bin/iso* /tmp/cdr/usr/share/man/man8/iso*
rm -f /tmp/cdr/usr/bin/btc* /tmp/cdr/usr/share/man/man1/btc*
rm -f /tmp/cdr/usr/bin/dev* /tmp/cdr/usr/share/man/man8/dev*
rm -fr /tmp/cdr/usr/share/man/man3
# this needs lame, which we don't have
rm -f /tmp/cdr/usr/bin/cdda2mp3 /tmp/cdr/usr/share/man/man1/cdda2mp3.1

${THOME}/build/create_pkg TRIBcdrtools /tmp/cdr
