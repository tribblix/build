#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only openssh-9.9p2 -C "--sysconfdir=/etc/ssh --libexecdir=/usr/lib/ssh --with-solaris-contracts --with-solaris-projects --with-ssl-engine --with-pam"
#
# split into client and server packages
#
${THOME}/build/genpkg TRIBnet-ssh openssh-9.9p2
${THOME}/build/genpkg TRIBsvc-net-ssh openssh-9.9p2
