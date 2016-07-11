#!/bin/sh
#
env CPPFLAGS=-I/usr/include/pcre ${THOME}/build/dobuild -gnu goffice-0.8.17
${THOME}/build/genpkg TRIBgoffice goffice-0.8.17
