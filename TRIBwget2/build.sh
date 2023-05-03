#!/bin/sh
#
# wget2 pulls in a lot more dependencies than v1 did
#
${THOME}/build/dobuild -64only wget2-2.0.1 -C '--sysconfdir=/etc'
${THOME}/build/genpkg TRIBwget2 wget2-2.0.1
