#!/bin/sh
#
# this is actually shipped with the i3 tarball
#
${THOME}/build/unpack i3-4.23
cd i3-4.23
cd AnyEvent-I3
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-anyevent-i3 AnyEvent-I3
cd ..
