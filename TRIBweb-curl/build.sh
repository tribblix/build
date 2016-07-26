#!/bin/sh
#

#
# You need to get a copy of the old libcurl.so.3 from somewhere
# an OI151a9 system will do, but it must match the IPS package
#
mkdir -p /tmp/cu/usr/lib
cp libcurl.so.3 /tmp/cu/usr/lib
${THOME}/build/create_pkg TRIBweb-curl /tmp/cu

