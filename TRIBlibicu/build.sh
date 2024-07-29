#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the old shared libraries are copied in by the fixit step
# for compatibility, as the SONAME gets bumped each release
#
${THOME}/build/dobuild -64 -n icu icu4c-74_2-src -S source -C "CC=gcc CXX=g++ --disable-tests --disable-examples"
${THOME}/build/genpkg TRIBlibicu icu4c-74_2-src
