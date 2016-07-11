#!/bin/sh
#
${THOME}/build/dobuild mutt-1.5.24 -C "--enable-imap --with-ssl"
${THOME}/build/genpkg TRIBmutt mutt-1.5.24
