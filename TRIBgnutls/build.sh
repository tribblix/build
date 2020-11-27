#!/bin/sh
#
# gnutls, now 64-bit
#
# disable tpm because the code isn't even self-consistent and autoconf
# can't work out what to do on its own
#
# ship a copy of the previous shared library for compat
#
${THOME}/build/dobuild -64 gnutls-3.6.15 -C "--disable-doc --without-tpm --with-included-libtasn1 --with-included-unistring --without-p11-kit --disable-dependency-tracking"
${THOME}/build/genpkg TRIBgnutls gnutls-3.6.15
