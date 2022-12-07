#!/bin/sh
#

git clone https://github.com/openjdk/jtreg
cd jtreg
env PATH=/usr/gnu/bin:$PATH bash make/build.sh --jdk /usr/jdk/instances/jdk11

rm -fr /tmp/jtb
mkdir -p /tmp/jtb/usr/versions
cd build/images
tar cf - jtreg | (cd /tmp/jtb/usr/versions ; tar xf -)
${THOME}/build/create_pkg TRIBjtreg /tmp/jtb
rm -fr /tmp/jtb
