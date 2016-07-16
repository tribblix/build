#!/bin/sh
#
${THOME}/build/unpack nedit-5.5
cd nedit-5.5
make solarisx86
# make solaris on sparc
mkdir -p /tmp/ned1/usr/bin
mkdir -p /tmp/ned1/usr/share/nedit
mkdir -p /tmp/ned1/usr/share/man/man1
cp source/nedit /tmp/ned1/usr/bin
cp source/nc /tmp/ned1/usr/bin/nedit-client
cp README COPYRIGHT ReleaseNotes doc/nedit.doc doc/nedit.html doc/faq.txt /tmp/ned1/usr/share/nedit
cp doc/nedit.man /tmp/ned1/usr/share/man/man1/nedit.1
cp doc/nc.man /tmp/ned1/usr/share/man/man1/nedit-client.1
${THOME}/build/create_pkg TRIBnedit /tmp/ned1
rm -fr /tmp/ned1
