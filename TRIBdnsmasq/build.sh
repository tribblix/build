#!/bin/sh
#
${THOME}/build/dobuild dnsmasq-2.89 -M "CC=gcc"
env CC=gcc ${THOME}/build/genpkg TRIBdnsmasq dnsmasq-2.89
