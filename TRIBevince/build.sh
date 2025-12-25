#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu evince-3.36.11 -C "--without-keyring --without-gspell --disable-nautilus --enable-compile-warnings=minimum --with-systemduserunitdir=no --enable-ps"
${THOME}/build/genpkg TRIBevince evince-3.36.11
