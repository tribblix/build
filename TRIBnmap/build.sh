#!/bin/sh
#
# zenmap requires pygtk, which we don't have
# ndiff is python2-only. so make sure we don't ship it
#
${THOME}/build/dobuild -64only nmap-7.92 -C "--without-zenmap --with-liblua=included --with-libpcre=included PYTHON=python3.9 --without-ndiff"
${THOME}/build/genpkg TRIBnmap nmap-7.92
