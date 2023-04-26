#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu evince-3.36.9 -C "--without-keyring --without-gspell --disable-nautilus --enable-compile-warnings=minimum --with-systemduserunitdir=no --enable-ps"
${THOME}/build/genpkg TRIBevince evince-3.36.9
