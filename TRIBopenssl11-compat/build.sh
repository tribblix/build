#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a compat build shipping the 1.1.1 libraries only
#

#
# now 1.1.1 for compatibility
#
${THOME}/build/unpack -64 openssl-1.1.1w
cd openssl-1.1.1w
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.0.0 --prefix=/usr
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-1.1.1w-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/amd64
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBopenssl11-compat openssl-1.1.1w

#
# The sparc configure steps are:
#
# env __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/sparcv9
