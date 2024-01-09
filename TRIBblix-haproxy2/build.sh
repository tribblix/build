#!/bin/sh
#
# haproxy2, installed in the same location as haproxy1,
# the package for which is now deprecated and removed
#
${THOME}/build/unpack haproxy-2.6.16
cd haproxy-2.6.16

gmake -j 4 CC=gcc TARGET=solaris USE_PCRE2=1 USE_OPENSSL=1 ARCH=64 USE_PROMEX=1

sed -i 's:PREFIX = /usr/local:PREFIX = /opt/tribblix/haproxy:' Makefile 
${THOME}/build/genpkg TRIBblix-haproxy2
cd ..
