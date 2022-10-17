#!/bin/sh
#
# gnupg2
#
# has a postconf script
#
# there's a patch for 2.2.40 that will not be needed for later versions
#
${THOME}/build/dobuild gnupg-2.2.40 -64only -C "--disable-ldap --enable-gpg-is-gpg2"
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.2.40
