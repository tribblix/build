#!/bin/sh
#
env CPPFLAGS=-I/usr/include/pcre ${THOME}/build/dobuild +64 -gnu goffice-0.10.56
${THOME}/build/genpkg TRIBgoffice goffice-0.10.56
