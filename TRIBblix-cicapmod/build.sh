#!/bin/sh
#
# modules need c-icap and clamav installed
#
${THOME}/build/dobuild c_icap_modules-0.4.5 -P /opt/tribblix/c-icap -C "--with-c-icap=/opt/tribblix/c-icap --with-clamav=/opt/tribblix/clamav"
cd c_icap_modules-0.4.5
rm -fr /tmp/cm
mkdir -p /tmp/cm/opt/tribblix/c-icap/etc
gmake install DESTDIR=/tmp/cm
${THOME}/build/create_pkg TRIBblix-cicapmod /tmp/cm
rm -fr /tmp/cm
