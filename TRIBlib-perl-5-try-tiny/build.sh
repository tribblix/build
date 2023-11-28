#!/bin/sh
#
${THOME}/build/unpack Try-Tiny-0.31
cd Try-Tiny-0.31
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-try-tiny Try-Tiny-0.31
