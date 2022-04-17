#!/bin/sh
#
# zenmap requires pygtk, which we don't have
#
${THOME}/build/dobuild -64only nmap-7.92 -C "--without-zenmap --with-liblua=included --with-libpcre=included PYTHON=python3.9"
${THOME}/build/genpkg TRIBnmap nmap-7.92
