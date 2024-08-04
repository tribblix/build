#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack boost_1_85_0
cd boost_1_85_0
./bootstrap.sh --prefix=/var/tmp/fubar/usr --without-libraries=python
#./b2 variant=release link=shared
#./b2 variant=release link=shared install
./b2 variant=release link=shared address-model=64 --libdir=/var/tmp/fubar/usr/lib/`$THOME/build/getarch`
./b2 variant=release link=shared address-model=64 --libdir=/var/tmp/fubar/usr/lib/`$THOME/build/getarch` install

#
# temporary copies for compatibility
#

cp -p /usr/lib/`$THOME/build/getarch`/libboost_system.so.1.64.0 /var/tmp/fubar/usr/lib/`$THOME/build/getarch`
cp -p /usr/lib/`$THOME/build/getarch`/libboost_filesystem.so.1.64.0 /var/tmp/fubar/usr/lib/`$THOME/build/getarch`

${THOME}/build/create_pkg TRIBboost /var/tmp/fubar
