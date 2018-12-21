#!/bin/sh
#
${THOME}/build/dobuild lynx2.8.9rel.1 -E /etc -C "--with-ssl --with-zlib --enable-gzip-help --enable-internal-links --enable-ipv6 --enable-local-docs --enable-nsl-fork --enable-underlines"
${THOME}/build/genpkg -I "install install-help install-doc" TRIBlynx lynx2.8.9rel.1
