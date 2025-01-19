#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack boost_1_85_0
cd boost_1_85_0

./bootstrap.sh --prefix=/var/tmp/fubar/usr --without-libraries=python

./b2 variant=release link=shared address-model=64 --libdir=/var/tmp/fubar/usr/lib/`$THOME/build/getarch`
./b2 variant=release link=shared address-model=64 --libdir=/var/tmp/fubar/usr/lib/`$THOME/build/getarch` install

${THOME}/build/create_pkg TRIBboost /var/tmp/fubar
