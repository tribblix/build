#!/bin/sh
#
# zenmap requires pygtk, which we don't have
#
${THOME}/build/dobuild nmap-7.50 -C "--without-zenmap --with-libpcre=included"
${THOME}/build/genpkg TRIBnmap nmap-7.50
