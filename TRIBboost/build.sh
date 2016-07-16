#!/bin/sh
#
# Wants iconv or icu
# zap install TRIBlibicu
# And is keeling over in fixincludes
#
${THOME}/build/unpack boost_1_57_0
cd boost_1_57_0
./bootstrap.sh --prefix=/var/tmp/fubar/usr
./b2
./b2 install
${THOME}/build/create_pkg TRIBboost /var/tmp/fubar
