#!/bin/sh
#
# gnutls, now 64-bit
#
# disable tpm because the code isn't even self-consistent and autoconf
# can't work out what to do on its own
#
${THOME}/build/dobuild -64 gnutls-3.3.28 -C "--disable-doc --without-tpm"
${THOME}/build/genpkg TRIBgnutls gnutls-3.3.28
