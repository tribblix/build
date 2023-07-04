#!/bin/sh
#
# zenmap requires pygtk, which we don't have
#
${THOME}/build/dobuild -64only nmap-7.94 -C "--without-zenmap --with-liblua=included --with-libpcre=included PYTHON=python3.11"
${THOME}/build/genpkg TRIBnmap nmap-7.94
