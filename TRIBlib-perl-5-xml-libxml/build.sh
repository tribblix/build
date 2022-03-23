#!/bin/sh
#
# later versions changed dependencies dramatically
#
$THOME/build/unpack XML-LibXML-2.0134
cd XML-LibXML-2.0134
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-xml-libxml XML-LibXML-2.0134
