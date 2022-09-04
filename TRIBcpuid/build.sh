#!/bin/sh
#
env EXTRA_CFLAGS=-m64 ${THOME}/build/dobuild cpuid-1.8.2
env EXTRA_CFLAGS=-m64 ${THOME}/build/genpkg TRIBcpuid cpuid-1.8.2
