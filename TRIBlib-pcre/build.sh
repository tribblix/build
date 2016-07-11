#!/bin/sh
#
# [must rebuild ggrep abiword gnumeric i3 nmap swig afterwards]
#
${THOME}/build/dobuild -64 pcre-8.38 -C "--includedir=/usr/include/pcre --localstatedir=/var --disable-static --enable-cpp --enable-rebuild-chartables --enable-utf8 --enable-unicode-properties --enable-newline-is-any --disable-stack-for-recursion --enable-pcregrep-libz --enable-pcregrep-libbz2 --with-posix-malloc-threshold=20 --with-link-size=4 --with-match-limit=10000000 --with-pic"
${THOME}/build/genpkg TRIBlib-pcre pcre-8.38
