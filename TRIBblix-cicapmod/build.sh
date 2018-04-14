#!/bin/sh
#
# modules need c-icap and clamav installed
#
zap install TRIBblix-cicap
zap install TRIBblix-clamav
${THOME}/build/dobuild c_icap_modules-0.5.1 -P /opt/tribblix/c-icap -C "--with-c-icap=/opt/tribblix/c-icap --with-clamav=/opt/tribblix/clamav"
cd c_icap_modules-0.5.1
rm -fr /tmp/cm
mkdir -p /tmp/cm/opt/tribblix/c-icap/etc
gmake install DESTDIR=/tmp/cm
${THOME}/build/create_pkg TRIBblix-cicapmod /tmp/cm
cd ..
rm -fr /tmp/cm
