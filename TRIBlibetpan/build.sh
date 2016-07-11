#!/bin/sh
#
git clone https://github.com/dinhviethoa/libetpan
zap install TRIBlibtool
cd libetpan
gsed -i s:__linux__:__sun__: src/low-level/smtp/mailsmtp.c
env CFLAGS=-O ./autogen.sh --prefix=/usr
gmake -j 8
${THOME}/build/genpkg TRIBlibetpan
zap uninstall TRIBlibtool
