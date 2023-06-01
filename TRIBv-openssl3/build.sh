#!/bin/sh
#
# openssl 3 requires rebuilding so no binary compatibility
# and we can ignore any of the illumos-specific tweaks
# inherited from Solaris and just do a vanilla build
#
# the fixit script would copy in previous libraries for binary
# compatibility
#
# production build won't need LDFLAGS to set the RPATH
#
${THOME}/build/unpack -64 openssl-3.0.9
cd openssl-3.0.9
sed -i s:pod2man:/usr/perl5/bin/pod2man: Configurations/unix-Makefile.tmpl
env LDFLAGS=-R/usr/versions/openssl-3/lib __CNF_LDFLAGS="-z aslr -z ignore" ./Configure solaris-x86-gcc shared threads zlib --api=1.1.1 --prefix=/usr/versions/openssl-3
gmake -j 6
cd ..
#
# you might have thought that asking for a solaris64-x86_64 build
# would actually do the right thing, but no ...
#
cd openssl-3.0.9-64bit
sed -i s:pod2man:/usr/perl5/bin/pod2man: Configurations/unix-Makefile.tmpl
env LDFLAGS=-R/usr/versions/openssl-3/lib/amd64 __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z aslr -z ignore" ./Configure solaris64-x86_64-gcc shared threads zlib --api=1.1.1 --prefix=/usr/versions/openssl-3 --libdir=lib/amd64 enable-ec_nistp_64_gcc_128
gmake -j 6
cd ..

#
# much easier now install understands DESTDIR
#
${THOME}/build/genpkg TRIBv-openssl3 openssl-3.0.9

#
# The sparc configure steps are:
#
# env LDFLAGS=-R/usr/versions/openssl-3/lib __CNF_LDFLAGS="-z ignore" ./Configure solaris-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr/versions/openssl-3
# env LDFLAGS=-R/usr/versions/openssl-3/lib/sparcv9 __CNF_CFLAGS=-m64 __CNF_LDFLAGS="-m64 -z ignore" ./Configure solaris64-sparcv9-gcc shared threads zlib --api=1.1.1 --prefix=/usr/versions/openssl-3 --libdir=lib/sparcv9
