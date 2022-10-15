#!/bin/sh
#
echo "Read the instructions, don't run this blindly"
exit 0

#
# note that you need at least 4G free in /tmp:
#  the bootstrap kit is 1G
#  the install is 1G
#  the package build area is 1G
#  the datastream package is 1G
#  the final zap package is 200M
#

#
# this is the first bootstrap build
#

#
# first we need a copy that works. The binary build for Solaris
# isn't good enough to ship, but it's good enough to bootstrap
# the build. We unpack it and install it into /tmp/local
#
#$THOME/build/unpack ghc-8.0.2-i386-unknown-solaris2
#cd ghc-8.0.2
#ln -s /usr/lib/libgmp.so ./libgmp.so.3
#ln -s /usr/gnu/lib/libncurses.so.5 .
#env LD_LIBRARY_PATH=`pwd` ./configure --prefix=/tmp/local
#env LD_LIBRARY_PATH=`pwd` gmake install
#cd ..
#rm -fr ghc-8.0.2
#cd /tmp/local/lib/ghc-8.0.2/rts
#ln -s /usr/lib/libgmp.so ./libgmp.so.3
#ln -s /usr/gnu/lib/libncurses.so.5 .

#
# subsequent builds will not need the bootstrap build installing
# but there's a chain of updates
# 8.4.4 can be built with 8.0.2
#

#
# then we use that to do the build
#
$THOME/build/unpack ghc-8.4.4-src
cd ghc-8.4.4
./configure --prefix=/usr/versions/haskell
gmake -j 8

#
# will take several hours...
#

#
# and then we can create a package
#
$THOME/build/genpkg TRIBhaskell
cd ..
