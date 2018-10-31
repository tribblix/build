#!/bin/sh
#
# needs a postconf patch
#
env PATH=/opt/tribblix/postgres96/bin:$PATH ${THOME}/build/dobuild pgpool-II-3.7.6 -C "--sysconfdir=/etc"
${THOME}/build/genpkg TRIBpgpool pgpool-II-3.7.6
