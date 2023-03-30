#!/bin/sh
#
# NB. make sure libpcap isn't at the same level, else it pulls it from the
# build area rather than the system
#
${THOME}/build/dobuild -64only tcpdump-4.99.3
${THOME}/build/genpkg TRIBtcpdump tcpdump-4.99.3
