#!/bin/sh
#
${THOME}/build/dobuild fping-3.13 -C --enable-ipv6
${THOME}/build/genpkg TRIBfping fping-3.13
