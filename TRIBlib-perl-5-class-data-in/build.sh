#!/bin/sh
#
${THOME}/build/unpack Class-Data-Inheritable-0.09
cd Class-Data-Inheritable-0.09
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-class-data-in Class-Data-Inheritable-0.09
