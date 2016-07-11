#!/bin/sh
#
${THOME}/build/dobuild -gnu evince-2.32.0 -C "--without-keyring --without-gconf --disable-nautilus --disable-help --enable-pixbuf"
${THOME}/build/genpkg TRIBevince evince-2.32.0
