#!/bin/sh
#
# needed by xmlto
#
# 64-bitness implemented as a preconf to the Makefile
#
${THOME}/build/dobuild getopt-1.1.6
${THOME}/build/genpkg TRIBgnu-getopt getopt-1.1.6
