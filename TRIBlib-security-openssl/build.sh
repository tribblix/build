#!/bin/sh
#
# openssl 1.1 and on is incompatible with openssl 1.0
# so we can ignore any of the illumos-specific tweaks
# inherited from Solaris and just do a vanilla build
#
# openssl 1.0.2 now shipped in the separate TRIBopenssl10-compat package
#

#
# the 3.0 build
#
${THOME}/build/unpack -64 openssl-3.0.12
cd openssl-3.0.12
sed -i s:pod2man:/usr/perl5/bin/pod2man: Configurations/unix-Makefile.tmpl
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.1.1 --prefix=/usr
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-3.0.12-64bit
sed -i s:pod2man:/usr/perl5/bin/pod2man: Configurations/unix-Makefile.tmpl
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.1.1 --prefix=/usr --libdir=lib/amd64 enable-ec_nistp_64_gcc_128
gmake -j 6
cd ..

#
# now 1.1.1 for compatibility
#
${THOME}/build/unpack -64 openssl-1.1.1w
cd openssl-1.1.1w
env __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.0.0 --prefix=/usr
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-1.1.1w-64bit
env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/amd64
sed -i s:pod2man:/usr/perl5/bin/pod2man: util/process_docs.pl
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
# note that fixinstall and fixinstall.64 attempt to detect the first
# 1.1.1 install and remove its man pages and includes
#
${THOME}/build/genpkg TRIBlib-security-openssl openssl-1.1.1w openssl-3.0.12

#
# The sparc configure steps are:
#
# env __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr --libdir=lib/sparcv9
#
# env __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr
# env __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.0.0 --prefix=/usr --libdir=lib/sparcv9
