#!/bin/sh
#
${THOME}/build/dobuild mutt-1.11.4 -C "--enable-imap --with-ssl  --with-slang --enable-smtp --enable-sidebar --enable-gpgme"
${THOME}/build/genpkg TRIBmutt mutt-1.11.4
