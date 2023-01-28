#!/bin/sh
#
# needs a postconf patch
#
env PATH=/opt/tribblix/postgres13/bin:$PATH ${THOME}/build/dobuild -64only pgpool-II-4.2.12 -C "--sysconfdir=/etc --with-openssl"
${THOME}/build/genpkg TRIBpgpool pgpool-II-4.2.12
