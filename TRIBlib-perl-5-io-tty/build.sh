#!/bin/sh
#
${THOME}/build/unpack IO-Tty-1.12
cd IO-Tty-1.12
perl Makefile.PL
make
${THOME}/build/genpkg TRIBlib-perl-5-io-tty
