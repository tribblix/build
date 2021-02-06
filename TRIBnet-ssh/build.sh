#!/bin/sh
#
${THOME}/build/dobuild openssh-8.4p1 -C "--sysconfdir=/etc/ssh --libexecdir=/usr/lib/ssh --with-solaris-contracts --with-solaris-projects --with-ssl-engine --with-pam"
#
# Need to split into 3 packages to match the old layout (so upgrades
# will get all the pieces)
# Next time, deprecate and remove TRIBnet-ssh-ssh-key as it's no
# longer necessary
#
${THOME}/build/genpkg TRIBnet-ssh openssh-8.4p1
${THOME}/build/genpkg TRIBnet-ssh-ssh-key openssh-8.4p1
${THOME}/build/genpkg TRIBsvc-net-ssh openssh-8.4p1
