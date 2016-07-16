#!/bin/sh
#
# our own (newer) p7zip
#
${THOME}/build/dobuild p7zip_9.38.1
cd p7zip_9.38.1
gmake 7z
gmake 7zr
gmake install DEST_DIR=/tmp/gg
mv /tmp/gg/usr/local/bin /tmp/gg/usr
mv /tmp/gg/usr/local/share /tmp/gg/usr
mv /tmp/gg/usr/local/man /tmp/gg/usr/share
cp contrib/gzip-like_CLI_wrapper_for_7z/p7zip /tmp/gg/usr/bin
cp contrib/gzip-like_CLI_wrapper_for_7z/man1/p7zip.1 /tmp/gg/usr/share/man/man1
rm -f /tmp/gg/usr/bin/7z{,a,r}
mv /tmp/gg/usr/local/lib/p7zip/7z{,a,r} /tmp/gg/usr/bin
mkdir -p /tmp/gg/usr/lib
mv /tmp/gg/usr/local/lib/p7zip /tmp/gg/usr/lib/7z
chmod -R a+rwx /tmp/gg/usr/share/doc
rm -fr /tmp/gg/usr/share/doc
rmdir /tmp/gg/usr/local/lib
rmdir /tmp/gg/usr/local
chmod 555 /tmp/gg/usr/bin/*
chmod 444 /tmp/gg/usr/share/man/man1/*.1
${THOME}/build/create_pkg TRIBcompress-p7zip /tmp/gg
#
# it's actually all in /usr/local/lib
#  and what's in bin are wrappers that need fixing
#  and the 7z needs to be fixed to find its codecs
#  and permissions are just screwy
#old - 2.62/7.02/0.03 -> 2132682 bytes
#new - 2.28/6.15/0.02 -> 2130807 bytes
