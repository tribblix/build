#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this package ships a number of shared libraries which have the version number
# embedded, but fortunately I haven't (yet) found any consumers so updating
# should be safe
#
${THOME}/build/dobuild -64only gettext-0.26 -P /usr/gnu -C "--with-included-glib --with-included-libcroco --disable-curses --without-libiconv-prefix --disable-libasprintf --disable-openmp --with-included-libunistring --disable-static"
${THOME}/build/genpkg TRIBgnu-gettext gettext-0.26
