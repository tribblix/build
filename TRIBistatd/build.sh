#!/bin/sh
#
git clone https://github.com/tiwilliam/istatd.git
# [Need to include sys/time.h ahead of sys/loadavg.h - see illumos bug 6002]
cd istatd
./autogen
./configure --prefix=/usr --sysconfdir=/etc
gmake -j 4
${THOME}/build/genpkg TRIBistatd
