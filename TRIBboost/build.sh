#!/bin/sh
#
# Wants iconv or icu
# zap install TRIBlibicu
# takes the OI patches which clean up the build
#
${THOME}/build/unpack boost_1_64_0
cd boost_1_64_0
./bootstrap.sh --prefix=/var/tmp/fubar/usr
./b2
./b2 install
${THOME}/build/create_pkg TRIBboost /var/tmp/fubar
