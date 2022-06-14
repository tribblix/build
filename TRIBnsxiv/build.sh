#!/bin/sh
#
# there's a preconf script to change the PREFIX
#
${THOME}/build/dobuild nsxiv-29 -M "CC=gcc HAVE_INOTIFY=0 HAVE_LIBWEBP=0"
cd nsxiv-29
rm -fr /tmp/nlr
gmake install-all DESTDIR=/tmp/nlr CC=gcc HAVE_INOTIFY=0 HAVE_LIBWEBP=0
cd ..
${THOME}/build/create_pkg TRIBnsxiv /tmp/nlr
rm -fr /tmp/nlr
