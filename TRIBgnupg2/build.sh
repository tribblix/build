#!/bin/sh
#
# gnupg2
#
${THOME}/build/dobuild gnupg-2.2.6 -C --disable-ldap
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.2.6
