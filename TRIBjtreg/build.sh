#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we want to ship a version that will be valid for testing all versions
# of openjdk, with emphasis on mainline
#
# look for JTREG_MINIMUM_VERSION in make/autoconf/lib-tests.m4
#

git clone https://github.com/openjdk/jtreg
cd jtreg
git checkout jtreg-8.1+1

env PATH=/usr/gnu/bin:$PATH bash make/build.sh --jdk /usr/jdk/instances/jdk17

rm -fr /tmp/jtb
mkdir -p /tmp/jtb/usr/versions
cd build/images
tar cf - jtreg | (cd /tmp/jtb/usr/versions ; tar xf -)
${THOME}/build/create_pkg TRIBjtreg /tmp/jtb
rm -fr /tmp/jtb
