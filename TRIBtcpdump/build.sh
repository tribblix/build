#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# NB. make sure libpcap isn't at the same level, else it pulls it from the
# build area rather than the system
#
rm -fr libpcap-*
${THOME}/build/dobuild -64only tcpdump-4.99.5
${THOME}/build/genpkg TRIBtcpdump tcpdump-4.99.5
