#!/bin/sh
#
${THOME}/build/unpack DBIx-Safe-1.2.5
cd DBIx-Safe-1.2.5
perl Makefile.PL
# PATH so it can find pod2html
env PATH=/usr/perl5/5.22.0/bin:$PATH make
env PATH=/usr/perl5/5.22.0/bin:$PATH ${THOME}/build/genpkg TRIBlib-perl-5-dbix-safe
