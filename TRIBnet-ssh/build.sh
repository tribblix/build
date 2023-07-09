#!/bin/sh
#
${THOME}/build/dobuild -64only openssh-8.9p1 -C "--sysconfdir=/etc/ssh --libexecdir=/usr/lib/ssh --with-solaris-contracts --with-solaris-projects --with-ssl-engine --with-pam"
#
# Need to split to match the old layout
# TRIBnet-ssh-ssh-key is now deprecated and forcibly removed in m31
#
${THOME}/build/genpkg TRIBnet-ssh openssh-8.9p1
${THOME}/build/genpkg TRIBsvc-net-ssh openssh-8.9p1
