#!/bin/sh
#
# 1.9.0 switched from openssl to gnutls which would be fine
# but also requires a separate libtasn1
#
${THOME}/build/dobuild rdesktop-1.8.6 -C "--disable-credssp --disable-smartcard"
${THOME}/build/genpkg  TRIBrdesktop rdesktop-1.8.6
