#!/bin/sh
#
# needs gnu-getopt
#
${THOME}/build/dobuild xmlto-0.0.28 -C GETOPT=/usr/gnu/bin/getopt
${THOME}/build/genpkg TRIBxmlto xmlto-0.0.28
