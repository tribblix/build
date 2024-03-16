#!/bin/sh
#
# this is pcre2, the original pcre is in TRIBlib-pcre
#
${THOME}/build/dobuild -64 pcre2-10.43 -C "--localstatedir=/var --disable-static --enable-rebuild-chartables --enable-newline-is-any --disable-stack-for-recursion --with-link-size=4 --with-match-limit=10000000 --with-pic --enable-pcre2grep-libz --enable-pcre2grep-libbz2 --enable-pcre2-8 --enable-unicode"
${THOME}/build/genpkg TRIBlib-pcre2 pcre2-10.43
