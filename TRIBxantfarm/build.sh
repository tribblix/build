#!/bin/sh
#
${THOME}/build/unpack xantfarm_14Aug2014
cd xantfarm
sed -i s:SYSV:SVR4: xantfarm.c
xmkmf -DHasGcc3=YES
make
cd ..
${THOME}/build/genpkg TRIBxantfarm xantfarm
