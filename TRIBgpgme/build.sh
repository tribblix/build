#!/bin/sh
#
${THOME}/build/dobuild -64only gpgme-1.23.1 -C --disable-gpg-test
${THOME}/build/genpkg TRIBgpgme gpgme-1.23.1
