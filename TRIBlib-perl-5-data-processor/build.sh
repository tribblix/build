#!/bin/sh
#
${THOME}/build/unpack Data-Processor-0.4.2
cd Data-Processor-0.4.2
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-data-processor Data-Processor-0.4.2
