#!/bin/sh
#
${THOME}/build/dobuild gettext-0.19.7 -P /usr/gnu -C "--with-included-glib --with-included-libcroco --disable-curses --without-libiconv-prefix"
${THOME}/build/genpkg TRIBgnu-gettext gettext-0.19.7
