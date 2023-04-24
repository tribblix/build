#!/bin/sh
#
# QT5 bindings don't work, disabled in the preconf script
#
# needs a preconf.64 script to go with --with-libassuan-prefix=/usr
#
${THOME}/build/dobuild -64 gpgme-1.20.0 -C "--with-libassuan-prefix=/usr --disable-gpg-test"
${THOME}/build/genpkg TRIBgpgme gpgme-1.20.0
