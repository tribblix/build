#!/bin/sh
#
# gnupg2
#
${THOME}/build/dobuild gnupg-2.2.5 -C --disable-ldap
${THOME}/build/genpkg TRIBgnupg2 gnupg-2.2.5
