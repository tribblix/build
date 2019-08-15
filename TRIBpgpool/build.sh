#!/bin/sh
#
# needs a postconf patch
#
env PATH=/opt/tribblix/postgres11/bin:$PATH ${THOME}/build/dobuild pgpool-II-4.0.6 -C "--sysconfdir=/etc --with-openssl"
${THOME}/build/genpkg TRIBpgpool pgpool-II-4.0.6
