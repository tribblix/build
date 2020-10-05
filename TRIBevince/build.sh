#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu evince-3.30.3 -C "--without-keyring --without-gspell --disable-nautilus --enable-compile-warnings=minimum"
${THOME}/build/genpkg TRIBevince evince-3.30.3
