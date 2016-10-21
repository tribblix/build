#!/bin/sh
#
# requires MailTools
#
${THOME}/build/unpack MIME-tools-5.508
cd MIME-tools-5.508
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-mime-tools MIME-tools-5.508
