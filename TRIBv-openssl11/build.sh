#!/bin/sh
#
# openssl 1.1 is incompatible with openssl 1.0
# so we can ignore any of the illumos-specific tweaks
# inherited from Solaris and just do a vanilla build
#
${THOME}/build/unpack -64 openssl-1.1.1e
cd openssl-1.1.1e
./Configure solaris-x86-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11
env LD_RUN_PATH=/usr/versions/openssl11/lib gmake -j 4
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-1.1.1e-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS=-m64 ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11 --libdir=lib/amd64
env LD_RUN_PATH=/usr/versions/openssl11/lib/amd64 gmake -j 4
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBv-openssl11 openssl-1.1.1e

#
# The sparc configure steps are:
#
# ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS=-m64 ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11
