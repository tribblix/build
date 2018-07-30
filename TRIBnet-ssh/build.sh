#!/bin/sh
#
# [can't get it to link with kerberos]
#
# openssh updates required because old and new openssh versions
# aren't interoperable
#
# https://www.gentoo.org/support/news-items/2015-08-13-openssh-weak-keys.html
# Or a command line like:
# ssh -o PubkeyAcceptedKeyTypes=+ssh-dss
# 
# Note from Andy Fiddaman on the OmniOS list:
# 
# To continue allowing connections from SunSSH (during migration for example),
# add:
# 
#         KexAlgorithms +diffie-hellman-group1-sha1
# 
# to sshd_config.
# 
# Remember to update any entries in /etc/pam.conf
# 
# We needed:
# 
#         s/sshd-kbdint/sshd/
# 
# to re-enable our two-factor authentication.
#
${THOME}/build/dobuild openssh-7.7p1 -C "--sysconfdir=/etc/ssh --libexecdir=/usr/lib/ssh --with-solaris-contracts --with-solaris-projects --with-ssl-engine --with-pam"
#
# Need to split into 3 packages to match the old layout (so upgrades
# will get all the pieces)
#
${THOME}/build/genpkg TRIBnet-ssh openssh-7.7p1
${THOME}/build/genpkg TRIBnet-ssh-ssh-key openssh-7.7p1
${THOME}/build/genpkg TRIBsvc-net-ssh openssh-7.7p1
