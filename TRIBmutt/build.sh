#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild mutt-2.2.15 -64only -C "--enable-imap --with-ssl --with-slang --enable-smtp --enable-sidebar --enable-gpgme LIBS=-lgpg-error"
${THOME}/build/genpkg TRIBmutt mutt-2.2.15
