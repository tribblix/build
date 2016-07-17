#!/bin/sh
#
# wget --no-check-certificate https://bitbucket.org/mgorny/npapi-sdk/downloads/npapi-sdk-0.27.2.tar.bz2
#
${THOME}/build/unpack npapi-sdk-0.27.2
cd npapi-sdk-0.27.2
./configure --prefix=/usr
gmake install DESTDIR=/tmp/nnn
${THOME}/build/create_pkg TRIBnpapi-sdk /tmp/nnn
