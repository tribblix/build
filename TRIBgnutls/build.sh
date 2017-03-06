#!/bin/sh
#
# gnutls, now 64-bit (on x86)
#
# disable tpm because the code isn't even self-consistent and autconf
# can't work out what to do on its own
#
${THOME}/build/dobuild -64 gnutls-3.3.27 -C "--disable-doc --without-tpm"
# sparc is 32-bit only because of libgmp errors
# ${THOME}/build/dobuild gnutls-3.3.27 -C "--disable-doc --without-tpm"
${THOME}/build/genpkg TRIBgnutls gnutls-3.3.27
