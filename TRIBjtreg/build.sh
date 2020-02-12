#!/bin/sh
#

hg clone https://hg.openjdk.java.net/code-tools/jtreg
cd jtreg
env PATH=/usr/gnu/bin:$PATH sh make/build-all.sh /usr/jdk/instances/jdk1.8.0

rm -fr /tmp/jtb
mkdir -p /tmp/jtb/usr/versions
cd build/images
tar cf - jtreg | (cd /tmp/jtb/usr/versions ; tar xf -)
${THOME}/build/create_pkg TRIBjtreg /tmp/jtb
rm -fr /tmp/jtb
