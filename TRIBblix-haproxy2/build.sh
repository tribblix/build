#!/bin/sh
#
# haproxy2
#
# the assumption is that there will only be one haproxy installed,
# as v1 and v2 are installed in the same locations
#
${THOME}/build/unpack haproxy-2.6.12
cd haproxy-2.6.12

gmake -j 4 CC=gcc TARGET=solaris USE_PCRE2=1 USE_OPENSSL=1 ARCH=64

sed -i 's:PREFIX = /usr/local:PREFIX = /opt/tribblix/haproxy:' Makefile 
${THOME}/build/genpkg TRIBblix-haproxy2
