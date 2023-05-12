#!/bin/sh
#
# update php, modular extension for postgres now
#
# disable ldap for now, see #70260
#
# must not have libtool installed
#
# also builds the pg package
#
# must have apache24 installed
#
# needs a tsrm patch to avoid crashes
#
zap uninstall TRIBlibtool
${THOME}/build/unpack php-8.1.19
cd php-8.1.19
#
# CFLAGS because Zend.m4 hasn't a hope of correctness
#
# consumers need various things enabled
# support mysql (builtin), postgres (ship as a separate package)
# grav needs zip and openssl, but zip now means libzip
# mbregex needs oniguruma, so disable it
# nextcloud needs zlib, wants bz2
#
# --build gets the architecture right, otherwise it uses 32-bit asm
#
env CFLAGS="-std=gnu99" ./configure --prefix=/opt/tribblix/php --with-ldap=no --with-apxs2=/opt/tribblix/apache2/bin/apxs --enable-bcmath --enable-mbstring --enable-mysqlnd --with-pgsql=shared,/opt/tribblix/postgres13 --with-pdo-pgsql=shared,/opt/tribblix/postgres13 --with-pdo-mysql=mysqlnd --with-mysqli=mysqlnd --without-sqlite3 --without-pdo-sqlite --with-curl=/usr --enable-gd --with-jpeg --with-bz2 --with-zlib --with-zlib-dir=/usr --with-freetype --enable-sockets --enable-fpm --with-zip --with-openssl --disable-mbregex --build=x86_64-pc-solaris2.11 CFLAGS=-m64 LDFLAGS=-m64
gsed -i 's:ext/sockets/ \$:ext/sockets/ -D_XPG4_2 \$:' Makefile
gmake -j 6
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
mkdir -p /tmp/m2/opt/tribblix/apache2/conf
mkdir -p /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20210902
cp /opt/tribblix/apache2/conf/original/httpd.conf /tmp/m2/opt/tribblix/apache2/conf
gmake install INSTALL_ROOT=/tmp/m2
mv /tmp/m2/opt/tribblix/php/lib/php/extensions/no-debug-zts-20210902/*pgsql* /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20210902
${THOME}/build/create_pkg TRIBblix-php-8 /tmp/m2
${THOME}/build/create_pkg TRIBblix-php-8pg /tmp/m2g
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
cd ..
