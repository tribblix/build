#!/bin/sh
#
# needs a patch and postconf
#
env PATH=/opt/tribblix/postgres15/bin:$PATH ${THOME}/build/dobuild -64only pgpool-II-4.2.14 -C "--sysconfdir=/etc --with-openssl"
${THOME}/build/genpkg TRIBpgpool pgpool-II-4.2.14
