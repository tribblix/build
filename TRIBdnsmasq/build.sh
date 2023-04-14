#!/bin/sh
#
${THOME}/build/dobuild dnsmasq-2.85 -M "CC=gcc"
env CC=gcc ${THOME}/build/genpkg TRIBdnsmasq dnsmasq-2.85
