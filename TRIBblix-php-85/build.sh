#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# php, modular extension for postgres and intl in separate packages
#
# disable ldap for now, see #70260
#
# must not have libtool installed
#
# must have apache24 installed
#
# needs a tsrm patch to avoid crashes
#
zap uninstall TRIBlibtool
${THOME}/build/unpack php-8.5.0
cd php-8.5.0
#
# CFLAGS because Zend.m4 hasn't a hope of correctness
#
# consumers need various things enabled
# support mysql (builtin), postgres (ship as a separate package)
# grav needs zip and openssl, but zip now means libzip
# mbregex needs oniguruma, so disable it
# nextcloud needs zlib sodium gmp ftp bz2
# exif appears relatively common
# intl is also common, build shared so it's packaged separately
#
# --build gets the architecture right on x86, otherwise it uses 32-bit asm
# on sparc, need --without-pcre-jit
#
env CFLAGS="-std=gnu99" PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig ./configure --prefix=/opt/tribblix/php --with-ldap=no --with-apxs2=/opt/tribblix/apache2/bin/apxs --enable-bcmath --enable-mbstring --enable-mysqlnd --with-pgsql=shared,/opt/tribblix/postgres17 --with-pdo-pgsql=shared,/opt/tribblix/postgres17 --with-pdo-mysql=mysqlnd --with-mysqli=mysqlnd --without-sqlite3 --without-pdo-sqlite --with-curl=/usr --enable-intl=shared --enable-gd --enable-exif --with-jpeg --with-bz2 --with-zlib --with-freetype --enable-sockets --enable-fpm --with-zip --with-openssl --with-sodium --with-gmp --enable-ftp --disable-mbregex --build=x86_64-pc-solaris2.11 CFLAGS=-m64 LDFLAGS=-m64 ICU_CFLAGS=-m64
gsed -i 's:ext/sockets/ \$:ext/sockets/ -D_XPG4_2 \$:' Makefile
gmake -j 6

rm -fr /tmp/m5 /tmp/m5g /tmp/m5i /tmp/pear
mkdir -p /tmp/m5/opt/tribblix/apache2/conf
cp /opt/tribblix/apache2/conf/original/httpd.conf /tmp/m5/opt/tribblix/apache2/conf

gmake install INSTALL_ROOT=/tmp/m5

mkdir -p /tmp/m5g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925
mkdir -p /tmp/m5i/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925
mv /tmp/m5/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925/*pgsql*.so /tmp/m5g/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925
mv /tmp/m5/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925/*intl*.so /tmp/m5i/opt/tribblix/php/lib/php/extensions/no-debug-zts-20250925

${THOME}/build/create_pkg TRIBblix-php-85 /tmp/m5
${THOME}/build/create_pkg TRIBblix-php-85pg /tmp/m5g
${THOME}/build/create_pkg TRIBblix-php-85intl /tmp/m5i

rm -fr /tmp/m5 /tmp/m5g /tmp/m5i /tmp/pear
cd ..
