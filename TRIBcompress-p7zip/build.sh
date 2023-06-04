#!/bin/sh
#
# 64-bit by postconf edits to the makefile
#
${THOME}/build/dobuild p7zip_16.02
cd p7zip_16.02
gmake 7z
gmake 7zr
rm -fr /tmp/gg
gmake install DEST_DIR=/tmp/gg DEST_BIN=/usr/bin DEST_HOME=/usr DEST_SHARE=/usr/lib DEST_SHARE_DOC=/usr/share/doc DEST_MAN=/usr/share/man
cp contrib/gzip-like_CLI_wrapper_for_7z/p7zip /tmp/gg/usr/bin
cp contrib/gzip-like_CLI_wrapper_for_7z/man1/p7zip.1 /tmp/gg/usr/share/man/man1
rm -fr /tmp/gg/usr/share/doc
${THOME}/build/create_pkg TRIBcompress-p7zip /tmp/gg
