#!/bin/sh
#
$THOME/build/unpack XML-LibXML-2.0128
cd XML-LibXML-2.0128
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-xml-libxml XML-LibXML-2.0128
