#!/bin/sh
#
${THOME}/build/unpack Perl-Critic-1.152
cd Perl-Critic-1.152
perl Build.PL
./Build
rm -fr /tmp/hoac
./Build install --destdir /tmp/hoac
${THOME}/build/create_pkg TRIBlib-perl-5-perl-critic /tmp/hoac
rm -fr /tmp/hoac
cd ..
