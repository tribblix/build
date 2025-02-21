#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild mutt-2.2.14 -64only -C "--enable-imap --with-ssl --with-slang --enable-smtp --enable-sidebar --enable-gpgme"
${THOME}/build/genpkg TRIBmutt mutt-2.2.14
