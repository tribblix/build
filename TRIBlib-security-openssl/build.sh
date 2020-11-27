#!/bin/sh
#
# openssl 1.1 is incompatible with openssl 1.0
# so we can ignore any of the illumos-specific tweaks
# inherited from Solaris and just do a vanilla build
#
# the fixit script copies in the 1.0 libraries for binary
#
${THOME}/build/unpack -64 openssl-1.1.1h
cd openssl-1.1.1h
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.0.0 --prefix=/usr
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 4
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-1.1.1h-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/amd64
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 4
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBlib-security-openssl openssl-1.1.1h

#
# The sparc configure steps are:
#
# ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS=-m64 ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr/versions/openssl11
