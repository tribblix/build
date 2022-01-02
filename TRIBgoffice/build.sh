#!/bin/sh
#
env CPPFLAGS=-I/usr/include/pcre ${THOME}/build/dobuild -gnu goffice-0.10.50
${THOME}/build/genpkg TRIBgoffice goffice-0.10.50
