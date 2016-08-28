#!/bin/sh
#
# need to rename the downloaded tarball, like so:
#  mv cups-2.1.4-source.tar.gz cups-2.1.4.tar.gz 
#
# [needs one of dnssd or avahi]
# I think the problem here is that we have a broken copy of bonjour. If we
# didn't have one at all the right thing would happen.
env CC=gcc CXX=g++ ${THOME}/build/dobuild cups-2.1.4 -C "--sysconfdir=/etc --localstatedir=/var --disable-dnssd"
cd cups-2.1.4
rm -fr /tmp/hc
gmake install BUILDROOT=/tmp/hc
${THOME}/build/create_pkg TRIBcups /tmp/hc
rm -fr /tmp/hc
cd ..
