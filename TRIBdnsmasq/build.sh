#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the Makefile is patched to be 64-bit
#
${THOME}/build/dobuild dnsmasq-2.89 -M "CC=gcc"
env CC=gcc ${THOME}/build/genpkg TRIBdnsmasq dnsmasq-2.89
