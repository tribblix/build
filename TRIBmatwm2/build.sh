#!/bin/sh
#
# This version requires pyxdg (TRIBxdg-python-37)
#
git clone https://github.com/segin/matwm2
cd matwm2
sed -i 's:install :ginstall :' Makefile.in
env CC=gcc ./configure --prefix=/usr --mandir=/usr/share/man
gmake
${THOME}/build/genpkg TRIBmatwm2
cd ..
