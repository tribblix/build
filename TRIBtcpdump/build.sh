#!/bin/sh
#
# NB. make sure pcap isn't at the same level, else it pulls pcap from the
# build area rather than the systems
#
${THOME}/build/dobuild tcpdump-4.8.1
${THOME}/build/genpkg TRIBtcpdump tcpdump-4.8.1
