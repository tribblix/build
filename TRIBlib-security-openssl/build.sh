#!/bin/sh
#
# openssl 1.0.2 now shipped in the separate TRIBopenssl10-compat package
# openssl 1.1 now shipped in the separate TRIBopenssl11-compat package
#

#
# the 3.0 build
#
${THOME}/build/unpack -64 openssl-3.0.13
cd openssl-3.0.13
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.1.1 --prefix=/usr
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-3.0.13-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.1.1 --prefix=/usr --libdir=lib/amd64 enable-ec_nistp_64_gcc_128
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBlib-security-openssl openssl-3.0.13

#
# The sparc configure steps are:
#
# env __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr --libdir=lib/sparcv9
