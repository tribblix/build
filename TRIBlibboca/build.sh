#!/bin/sh
#
${THOME}/build/unpack boca-1.0.7
cd boca-1.0.7
sed -i s:winegcc:XXwinegccXX: Makefile-options
gmake -j 4 CC=gcc prefix=/usr
cd ..
${THOME}/build/genpkg -M "CC=gcc prefix=/usr" TRIBlibboca boca-1.0.7
