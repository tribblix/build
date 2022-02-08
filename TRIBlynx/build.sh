#!/bin/sh
#
${THOME}/build/dobuild -64only lynx2.9.0dev.10 -E /etc -C "--with-ssl --with-zlib --enable-gzip-help --enable-internal-links --enable-ipv6 --enable-local-docs --enable-nsl-fork --enable-underlines"
${THOME}/build/genpkg -I "install install-help install-doc" TRIBlynx lynx2.9.0dev.10
