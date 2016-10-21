#!/bin/sh
#
# requires TimeDate
#
${THOME}/build/unpack MailTools-2.18
cd MailTools-2.18
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-mailtools MailTools-2.18
