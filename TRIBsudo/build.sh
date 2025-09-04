#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# take most of the options and the bsm audit patches from OI
#
# -A to regenerate configure because we patch configure.ac to get
# the man pages in the right (post-IPD4) places
#
# there's a custom config file installed by the fixit script
#
${THOME}/build/dobuild -A -64only sudo-1.9.17p2 -C "--disable-hardening --with-project --with-rundir=/var/run/sudo --with-pam --with-pam-login --disable-pam-session --with-tty-tickets --without-insults --without-lecture --with-ignore-dot --with-bsm-audit"
#
# hack to avoid the install trying to chown the files
#
${THOME}/build/genpkg -I "install INSTALL_OWNER=" TRIBsudo sudo-1.9.17p2
