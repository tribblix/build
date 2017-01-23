#!/bin/sh
#
${THOME}/build/dobuild fping-3.15 -C --enable-ipv6
${THOME}/build/genpkg TRIBfping fping-3.15
