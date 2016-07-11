#!/bin/sh
#
# zenmap requires pygtk, which we don't have
#
${THOME}/build/dobuild nmap-7.12 -C --without-zenmap
${THOME}/build/genpkg TRIBnmap nmap-7.12
