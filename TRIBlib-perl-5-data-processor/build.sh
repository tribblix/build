#!/bin/sh
#
${THOME}/build/unpack Data-Processor-1.0.9
cd Data-Processor-1.0.9
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-data-processor Data-Processor-1.0.9

