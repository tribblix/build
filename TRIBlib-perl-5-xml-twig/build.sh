#!/bin/sh
#
${THOME}/build/unpack XML-Twig-3.49
cd XML-Twig-3.49
perl Makefile.PL -y
make
cd ..
${THOME}/build/genpkg TRIBlib-perl-5-xml-twig XML-Twig-3.49
