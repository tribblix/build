#!/bin/sh
#
# gnutls, now 64-bit (on x86)
${THOME}/build/dobuild -64 gnutls-3.3.15 -C --disable-doc
# sparc is 32-bit only because of libgmp errors
# ${THOME}/build/dobuild gnutls-3.3.15 -C --disable-doc
${THOME}/build/genpkg TRIBgnutls gnutls-3.3.15
