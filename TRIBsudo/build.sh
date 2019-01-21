#!/bin/sh
#
# take most of the options and the bsm audit patches from OI
#
${THOME}/build/dobuild sudo-1.8.27 -C "--disable-hardening --with-project --with-rundir=/var/run/sudo --with-pam --with-pam-login --disable-pam-session --with-tty-tickets --without-insults --without-lecture --with-ignore-dot --with-bsm-audit"
#
# hack to avoid the install trying to chown the files
#
${THOME}/build/genpkg -I "install INSTALL_OWNER=" TRIBsudo sudo-1.8.27
