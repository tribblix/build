#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is just a set of files
# you can either grab them from
#  https://github.com/oracle/solaris-xorg/tree/master/open-src/data/workspace-patterns
# or if you have the old OI package installed, they'll be in /usr/share/patterns
# and you can just copy them out into the build area
#
rm -fr /tmp/tpat
mkdir /tmp/tpat
tar cf - -C / usr/share/patterns | ( cd /tmp/tpat ; tar xf -)
${THOME}/build/create_pkg TRIBx11-data-workspace-patterns /tmp/tpat
rm -fr /tmp/tpat
