#!/bin/sh
#
# there is no pre-built tarsnap for illumos
# so we have to build from source
#
${THOME}/build/dobuild tarsnap-autoconf-1.0.39 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBtarsnap tarsnap-autoconf-1.0.39
