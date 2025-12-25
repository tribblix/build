#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# openssl 1.0.2 updates
# As of 1.0.2g, ignore md2 but must explicitly enable ssl2 to retain binary
# compatibility
#
# this is a compat build shipping the libraries only
#
${THOME}/build/unpack -64 openssl-1.0.2u
cd openssl-1.0.2u
./Configure solaris-x86-gcc --pk11-libname=/usr/lib/libpkcs11.so.1 shared threads zlib enable-ssl2 --prefix=/usr
make depend
make
cd ..
cd openssl-1.0.2u-64bit
./Configure solaris64-x86_64-gcc --pk11-libname=/usr/lib/amd64/libpkcs11.so.1 shared threads zlib enable-ssl2 --prefix=/usr
make depend
make
cd ..
rm -fr /tmp/osl
cd openssl-1.0.2u-64bit
make install INSTALL_PREFIX=/tmp/osl
cd ..
cd openssl-1.0.2u
make install INSTALL_PREFIX=/tmp/osl
cd ..
${THOME}/build/create_pkg TRIBopenssl10-compat /tmp/osl
rm -fr /tmp/osl
#
# The sparc configure steps are:
#
# ./Configure solaris-sparcv9-gcc --pk11-libname=/usr/lib/libpkcs11.so.1 shared threads zlib enable-ssl2 --prefix=/usr
# ./Configure solaris64-sparcv9-gcc --pk11-libname=/usr/lib/sparcv9/libpkcs11.so.1 shared threads zlib enable-ssl2 --prefix=/usr
