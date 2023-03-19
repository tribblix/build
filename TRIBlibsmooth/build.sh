#!/bin/sh
#
${THOME}/build/unpack smooth-0.9.10
cd smooth-0.9.10
gmake -j 4 CC=gcc prefix=/usr
cd ..
${THOME}/build/genpkg -M "CC=gcc prefix=/usr" TRIBlibsmooth smooth-0.9.10
