#!/bin/sh
#
${THOME}/build/unpack Perl-Tidy-20230912
cd Perl-Tidy-20230912
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-perl-tidy Perl-Tidy-20230912
