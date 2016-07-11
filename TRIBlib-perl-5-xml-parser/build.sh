#!/bin/sh
#
# [this is a combination package; the original OI version had XML::Parser
#  and XML::Simple]
#
# you must run this once, install the package, then run it again
# to make the final package
#
${THOME}/build/unpack XML-SAX-Base-1.08
${THOME}/build/unpack XML-NamespaceSupport-1.11
${THOME}/build/unpack XML-SAX-0.99
${THOME}/build/unpack XML-Parser-2.44
${THOME}/build/unpack XML-SAX-Expat-0.51
${THOME}/build/unpack XML-Simple-2.20
cd XML-SAX-Base-1.08
perl Makefile.PL
make
cd ..
cd XML-NamespaceSupport-1.11
perl Makefile.PL
make
cd ..
cd XML-SAX-0.99
perl Makefile.PL
make
cd ..
cd XML-Parser-2.44
perl Makefile.PL
make
cd ..
cd XML-SAX-Expat-0.51
perl Makefile.PL
make
cd ..
cd XML-Simple-2.20
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-xml-parser XML-SAX-Base-1.08 XML-NamespaceSupport-1.11 XML-SAX-0.99 XML-Parser-2.44 XML-SAX-Expat-0.51 XML-Simple-2.20
