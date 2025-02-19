#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a postconf script to fix the install step
#
env EXTRA_CFLAGS=-m64 ${THOME}/build/dobuild cpuid-1.8.3
env EXTRA_CFLAGS=-m64 ${THOME}/build/genpkg TRIBcpuid cpuid-1.8.3
