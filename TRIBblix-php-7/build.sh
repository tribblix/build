#!/bin/sh
#
# update php, modular extension for postgres now
#
# [looks like #70002 related to file main/php_open_temporary_file.c isn't
# an issue, and disable ldap for now, see #70260]
#
# must not have libtool installed
#
# also builds the pg package
#
# must have apache24 installed
#
zap uninstall TRIBlibtool
${THOME}/build/unpack php-7.2.17
cd php-7.2.17
#
# CFLAGS because Zend.m4 hasn't a hope of correctness
#
# consumers need various things enabled
# support mysql (builtin), postgres (ship as a separate package)
# grav needs zip and openssl
#
env CFLAGS="-std=gnu99" ./configure --prefix=/opt/tribblix/php --with-ldap=no --with-libxml-dir=/usr --with-apxs2=/opt/tribblix/apache2/bin/apxs --enable-bcmath --enable-mbstring --enable-mysqlnd --with-pgsql=shared,/opt/tribblix/postgres11 --with-pdo-pgsql=shared,/opt/tribblix/postgres11 --with-pdo-mysql=mysqlnd --with-mysqli=mysqlnd --without-sqlite3 --without-pdo-sqlite --with-curl=/usr --with-gd --with-jpeg-dir=/usr --with-png-dir=/usr --with-zlib-dir=/usr --with-freetype-dir=/usr --enable-sockets --enable-fpm --enable-zip --with-openssl
gsed -i 's:ext/sockets/ \$:ext/sockets/ -D_XPG4_2 \$:' Makefile
gmake -j 6
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
mkdir -p /tmp/m2/opt/tribblix/apache2/conf
mkdir -p /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20170718
cp /opt/tribblix/apache2/conf/original/httpd.conf /tmp/m2/opt/tribblix/apache2/conf
gmake install INSTALL_ROOT=/tmp/m2
mv /tmp/m2/opt/tribblix/php/lib/php/extensions/no-debug-zts-20170718/*pgsql* /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20170718
${THOME}/build/create_pkg TRIBblix-php-7 /tmp/m2
${THOME}/build/create_pkg TRIBblix-php-7pg /tmp/m2g
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
cd ..
