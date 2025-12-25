#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
echo "Read the instructions, don't run this blindly"
exit 0

#
# note that you need at least 8G free memory as haddock gets that big
# and lots of space in /tmp:
#  the bootstrap kit is 600M
#  the install is 1.8G
#  the package build area is 1.8G
#  the datastream package is 1.8G
#  the final zap package is 300M
#

#
# this is the first bootstrap build
#
# the last version we can use make with is 9.4, but we have to get there
# before we can migrate to hadrian
#
# for 9.4, a 9.2 bootstrap is too new (?!), so use a 9.0 bootstrap from
# https://us-central.manta.mnx.io/pkgsrc/public/pkg-bootstraps/index.html
#

#
# first we need a copy that works. The binary build for Solaris
# isn't good enough to ship, but it's good enough to bootstrap
# the build. We unpack it and install it into /tmp/local
#
$THOME/build/unpack ghc-9.0.1-x86_64-unknown-solaris2
cd ghc-9.0.1-boot
ln -s /usr/gnu/lib/amd64/libiconv.so.2 .
ln -s /usr/gnu/lib/amd64/libncurses.so.6 .
env LD_LIBRARY_PATH=`pwd` ./configure --prefix=/tmp/local
env LD_LIBRARY_PATH=`pwd` gmake install

#
# subsequent builds will hopefully not need the bootstrap build installing
#

#
# then we use that to do the build
#
$THOME/build/unpack ghc-9.4.7-src
cd ghc-9.4.7
#
# code changes:
# libraries/terminfo/System/Console/Terminfo/Base.hs
#  - simply remove term.h
# libraries/process/cbits/posix/fork_exec.c
#  - defined  _POSIX_PTHREAD_SEMANTICS for getpwuid_r (before common.h)
#
# and it can't get on with dtrace
#
env LD_LIBRARY_PATH=/usr/gnu/lib/amd64 ./configure --enable-dtrace=no --prefix=/usr/versions/haskell GHC=/tmp/local/bin/ghc CFLAGS=-D_POSIX_PTHREAD_SEMANTICS
#
# can't get alex itself, but I have one in ~/.cabal/bin that will do, so PATH
# (you could explicitly cabal install alex using the previous version)
#
env LD_LIBRARY_PATH=/usr/gnu/lib/amd64 PATH=${PATH}:${HOME}/.cabal/bin gmake -j 8

#
# will take several hours...
#

#
# install
#
rm -fr /tmp/hh
env LD_LIBRARY_PATH=/usr/gnu/lib/amd64 PATH=${PATH}:${HOME}/.cabal/bin gmake install DESTDIR=/tmp/hh
#
# and then we can create a package
#
$THOME/build/create_pkg TRIBhaskell /tmp/hh
cd ..
