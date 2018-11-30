#!/bin/sh
#
${THOME}/build/dobuild -64 idnkit-2.3 -C "--sysconfdir=/etc --with-iconv=no"
${THOME}/build/genpkg TRIBidnkit idnkit-2.3
