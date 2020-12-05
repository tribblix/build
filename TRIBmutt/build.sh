#!/bin/sh
#
${THOME}/build/dobuild mutt-2.0.3 -C "--enable-imap --with-ssl  --with-slang --enable-smtp --enable-sidebar --enable-gpgme"
${THOME}/build/genpkg TRIBmutt mutt-2.0.3
