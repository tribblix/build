#!/bin/sh
#
${THOME}/build/dobuild -64only openssh-9.7p1 -C "--sysconfdir=/etc/ssh --libexecdir=/usr/lib/ssh --with-solaris-contracts --with-solaris-projects --with-ssl-engine --with-pam"
#
# split into client and server packages
#
${THOME}/build/genpkg TRIBnet-ssh openssh-9.7p1
${THOME}/build/genpkg TRIBsvc-net-ssh openssh-9.7p1
