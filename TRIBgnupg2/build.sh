#!/bin/sh
#
# gnupg2
#
# has a postconf script
#
${THOME}/build/dobuild gnupg-2.2.41 -64only -C "--disable-ldap --enable-gpg-is-gpg2"
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.2.41
