#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the SONAME gets bumped each release so, if necessary, the old
# shared libraries will need to be copied in by the fixit step in
# order for binaries linked against the previous version to run
#
${THOME}/build/dobuild -64 -n icu icu4c-72_1-src -S source -C "CC=gcc CXX=g++ --disable-tests --disable-examples"
${THOME}/build/genpkg TRIBlibicu icu4c-72_1-src
