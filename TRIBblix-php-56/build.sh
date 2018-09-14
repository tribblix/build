#!/bin/sh
#
# you must revert #70002 related to file main/php_open_temporary_file.c,
# and disable ldap for now, see #70260
#
# must not have libtool installed
#
# also builds the pg package
#
# must have apache24 installed
#
zap uninstall TRIBlibtool
${THOME}/build/unpack php-5.6.38
cd php-5.6.38
./configure --prefix=/opt/tribblix/php --with-mcrypt=/opt/tribblix/mcrypt --with-ldap --with-libxml-dir=/usr --with-apxs2=/opt/tribblix/apache2/bin/apxs --enable-bcmath --enable-mbstring --with-mysql=mysqlnd --with-pgsql=shared,/opt/tribblix/postgres96 --with-pdo-pgsql=shared,/opt/tribblix/postgres96 --with-pdo-mysql=mysqlnd --with-mysqli=mysqlnd --without-sqlite3 --without-pdo-sqlite --with-curl=/usr --with-gd --with-jpeg-dir=/usr --with-png-dir=/usr --with-zlib-dir=/usr --with-freetype-dir=/usr --enable-sockets --enable-fpm
gsed -i 's:ext/sockets/ \$:ext/sockets/ -D_XPG4_2 \$:' Makefile
gmake -j 6
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
mkdir -p /tmp/m2/opt/tribblix/apache2/conf
mkdir -p /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20131226
cp /opt/tribblix/apache2/conf/original/httpd.conf /tmp/m2/opt/tribblix/apache2/conf
gmake install INSTALL_ROOT=/tmp/m2
mv /tmp/m2/opt/tribblix/php/lib/php/extensions/no-debug-zts-20131226/*pgsql* /tmp/m2g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20131226
${THOME}/build/create_pkg TRIBblix-php-56 /tmp/m2
${THOME}/build/create_pkg TRIBblix-php-56pg /tmp/m2g
rm -fr /tmp/m2 /tmp/m2g /tmp/pear
cd ..
