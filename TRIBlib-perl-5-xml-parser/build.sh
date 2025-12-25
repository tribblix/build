#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# [this is a combination package; the original OI version had XML::Parser
#  and XML::Simple]
#
# you must run this once, install the package, then run it again
# to make the final package
#
${THOME}/build/unpack XML-SAX-Base-1.09
${THOME}/build/unpack XML-NamespaceSupport-1.12
${THOME}/build/unpack XML-SAX-1.02
${THOME}/build/unpack XML-Parser-2.47
${THOME}/build/unpack XML-SAX-Expat-0.51
${THOME}/build/unpack XML-Simple-2.25
cd XML-SAX-Base-1.09
perl Makefile.PL
make
cd ..
cd XML-NamespaceSupport-1.12
perl Makefile.PL
make
cd ..
cd XML-SAX-1.02
perl Makefile.PL
make
cd ..
cd XML-Parser-2.47
perl Makefile.PL
make
cd ..
cd XML-SAX-Expat-0.51
perl Makefile.PL
make
cd ..
cd XML-Simple-2.25
perl Makefile.PL
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-xml-parser XML-SAX-Base-1.09 XML-NamespaceSupport-1.12 XML-SAX-1.02 XML-Parser-2.47 XML-SAX-Expat-0.51 XML-Simple-2.25
