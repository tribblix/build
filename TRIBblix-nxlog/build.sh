#!/bin/sh
#
# nxlog
#
# file name doesn't match up
# mv nxlog-ce-2.10.2150.tar.gz	nxlog-ce-2.10.7.tar.gz 
#
# needs apr
# disable perl as that would write to /usr
#
${THOME}/build/dobuild apr-1.5.2 -P /opt/tribblix/nxlog -L
env TRIBBLIX_LDFLAGS="-L`pwd`/apr-1.5.2/.libs" TRIBBLIX_CFLAGS="-I`pwd`/apr-1.5.2/include" ${THOME}/build/dobuild nxlog-ce-2.10.7 -P /opt/tribblix/nxlog -C "APRCONFIG=../apr-1.5.2/apr-1-config CPPFLAGS=-I/usr/include/pcre --enable-xm_perl=no" -L -J 1
${THOME}/build/genpkg TRIBblix-nxlog nxlog-ce-2.10.7 apr-1.5.2
