#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# openssl 1.0.2 now shipped in the separate TRIBopenssl10-compat package
# openssl 1.1 now shipped in the separate TRIBopenssl11-compat package
#

#
# -D_REENTRANT forces per-thread errno, which solves the EAGAIN failures
# we were seeing in the b2 and aws s3 clients
#

${THOME}/build/unpack -64 openssl-3.0.17
cd openssl-3.0.17
env __CNF_CFLAGS="-D_REENTRANT" __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.1.1 --prefix=/usr
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-3.0.17-64bit
env __CNF_CFLAGS="-D_REENTRANT -m64" __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.1.1 --prefix=/usr --libdir=lib/amd64 enable-ec_nistp_64_gcc_128
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBlib-security-openssl openssl-3.0.17
