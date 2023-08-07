#!/bin/sh
#
# openssl 1.1 is incompatible with openssl 1.0
# so we can ignore any of the illumos-specific tweaks
# inherited from Solaris and just do a vanilla build
#
# openssl 1.0.2 now shipped in the separate TRIBopenssl10-compat package
#
${THOME}/build/unpack -64 openssl-1.1.1v
cd openssl-1.1.1v
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.0.0 --prefix=/usr
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-1.1.1v-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/amd64
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBlib-security-openssl openssl-1.1.1v

#
# The sparc configure steps are:
#
# env __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/sparcv9
