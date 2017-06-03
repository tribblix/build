#!/bin/sh
#
${THOME}/build/unpack  colordiff-1.0.18
cd colordiff-1.0.18
gmake
gsed -i 's:install :ginstall :' Makefile
gsed -i 's:diff_cmd=diff:diff_cmd=gdiff:'
rm -fr /tmp/cdi
mkdir -p /tmp/cdi
gmake install DESTDIR=/tmp/cdi INSTALL_DIR=/usr/bin MAN_DIR=/usr/share/man/man1
${THOME}/build/create_pkg TRIBtext-colordiff /tmp/cdi
rm -fr /tmp/cdi
cd ..
