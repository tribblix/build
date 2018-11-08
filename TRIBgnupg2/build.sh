#!/bin/sh
#
# gnupg2
#
${THOME}/build/dobuild gnupg-2.2.11 -C "--disable-ldap --enable-gpg-is-gpg2"
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.2.11
