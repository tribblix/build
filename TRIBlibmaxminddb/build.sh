#!/bin/sh
#
# libtap doesn't automatically inherit $CC
#
env CC=gcc ${THOME}/build/dobuild -64 libmaxminddb-1.4.2
${THOME}/build/genpkg TRIBlibmaxminddb libmaxminddb-1.4.2
