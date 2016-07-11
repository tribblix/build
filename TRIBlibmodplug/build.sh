#!/bin/sh
#
git clone https://github.com/christopho/libmodplug
cd libmodplug
env CFLAGS=-O ./configure --prefix=/usr
${THOME}/build/genpkg TRIBlibmodplug
